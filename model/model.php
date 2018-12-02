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
            $SQLquery = "SELECT * FROM phim";
            $result = $this->conn -> query($SQLquery);
            $i=0;
            if($result->num_rows>0){
                while($row = $result->fetch_assoc()){            
                    $info = array("ID" => $row["ma_phim"], "Name" => $row["tenphim"], "Image" => $row["anh_dai_dien"], "Category" => $row["the_loai"]
                    , "Nationality" => $row["quoc_gia"], "Duration" => $row["thoi_luong"], "Date" => $row["khoi_chieu"], "Language" => $row["ngon_ngu"]
                    , "Director" => $row["dao_dien"], "Publisher" => $row["nha_san_xuat"], "Actor" => $row["dien_vien_chinh"]
                    , "Description" => $row["noidung"], "Rated" => $row["ma_nhan"], "Status" => $row["tinh_trang"]); 
                    // print_r($info);
                    $movie = new movie($info);
                    $movies[$i] = $movie;
                    $i++;
                }
                return $movies;
            }else{
                return "No DATA";
            }
        }

        public function getMovieByID($ID){
            $SQLquery = "SELECT * FROM phim WHERE ma_phim = '$ID' ";
            $result = $this->conn -> query($SQLquery);
            if($result->num_rows>0){
                $row = $result->fetch_assoc();
                $info = array("ID" => $row["ma_phim"], "Name" => $row["tenphim"], "Image" => $row["anh_dai_dien"], "Category" => $row["the_loai"]
                , "Nationality" => $row["quoc_gia"], "Duration" => $row["thoi_luong"], "Date" => $row["khoi_chieu"], "Language" => $row["ngon_ngu"]
                , "Director" => $row["dao_dien"], "Publisher" => $row["nha_san_xuat"], "Actor" => $row["dien_vien_chinh"]
                , "Description" => $row["noidung"], "Rated" => $row["ma_nhan"], "Status" => $row["tinh_trang"]); 
                $movie = new movie($info);
                return $movie;
            }else{
                return "No DATA";
            }
        }

        public function getMovieSchedule($ID,$date,$rap){
            $SQLquery = "SELECT ktg.gio_chieu,rap.ma_rap,rap.ma_dinh_dang FROM ktg 
            INNER JOIN lichchieu on ktg.ma_ktg =lichchieu.ma_ktg 
            INNER JOIN rap on lichchieu.ma_rap = rap.ma_rap 
            WHERE lichchieu.ma_phim = '$ID' AND ktg.ngay_chieu ='$date'
            AND rap.ma_rap = '$rap'";
            $result = $this->conn -> query($SQLquery);
            $schedule = array();
            if($result->num_rows>0){
                while($row = $result->fetch_assoc()){
                    //$schedule[$i]["NgayChieu"] = $row['ngay_chieu'];
                    $schedule["GioChieu"] = $row['gio_chieu'];
                    $schedule["MaRap"] = $row['ma_rap'];
                    $schedule["DinhDang"] = $row['ma_dinh_dang'];
                }
                return $schedule;
            }else{
                return "No DATA";
            }
            
        }

        public function getAllDate(){
            $SQLquery = "SELECT DISTINCT ktg.ngay_chieu FROM ktg";
            $result = $this->conn -> query($SQLquery);
            $date = array();
            $i=0;
            if($result->num_rows>0){
                while($row = $result->fetch_assoc()){
                    $date[$i] = $row['ngay_chieu'];
                    $i++;
                }
                return $date;
            }else{
                return "No DATA";
            }
        }
    }

?>