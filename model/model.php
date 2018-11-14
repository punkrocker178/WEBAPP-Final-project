<?php
    include("config/database.php");
    include("model/account.php");
    include("model/movie.php");

    class model{
        private $conn;

        public function __construct()
        {
            $this->conn = getConnection();
        }

        function __destruct() {
            $this->conn->close();
        }

        public function login($username,$password){
            $password = md5($password);
            $SQLquery = "SELECT count(*) as count from account where email ='$username' and password = '$password'";
            $result = $this->conn -> query($SQLquery);
            if($result->num_rows>0){
                $row = $result->fetch_assoc();
                if($row['count']==1){
                    return true;
                }
            }
            return false;
        }

        public function register($info){
            $statement = $this->conn->prepare("INSERT into user values(?,?,?,?)");
            $statement->bind_param("siss",$info['name'],$info['gender'],$info['birthdate'],$info['email']);

            if(!($statement->execute())){
                return $statement->error;
            }

            $account = $this->conn->prepare("INSERT into account values(?,?)");
            $account->bind_param("ss",$info['email'],$info['password']);

            if(!($account->execute())){
                return $account->error;
            }

            if($statement->affected_rows>0){
                return true;
            }
            
        }

        public function getMovies(){
            $movies[] = array();
            $SQLquery = "SELECT * FROM movie";
            $result = $this->conn -> query($SQLquery);
            if($result->num_rows>0){
                while($row = $result->fetch_assoc()){
                    $movie = new movie($row['ID'],$row['Name'],$row['Description'],$row['Duration'],$row['images']);
                    $movies[$row['ID']] = $movie;
                }
                return $movies;
            }else{
                return "No DATA";
            }
        }
    }

?>