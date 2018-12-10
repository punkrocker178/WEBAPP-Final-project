<?php
    include("config/database.php");
    include("model/account.php");
    include("model/movie.php");
    include("model/ghe.php");

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
            $statement = $this->conn->prepare("INSERT into user values(?,?,?,?,?)");
            $statement->bind_param("sisss",$info['name'],$info['gender'],$info['birthdate'],$info['email'],$info['sdt']);

            if(!($statement->execute())){
                return $statement->error;
            }

            //Tạo tài khoản mặc định là tạo tk người dùng
            $account = $this->conn->prepare("INSERT into account values(?,?,?)");
            $account->bind_param("sss",$info['email'],$info['role_id'],$info['password']);

            if(!($account->execute())){
                return $account->error;
            }

            if($statement->affected_rows>0 && $account->affected_rows >0){
                return true;
            }
            
        }

        public function insertMovie($info){
            $statement = $this->conn->prepare("INSERT into phim values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            $statement->bind_param("sssssssssssssss",$info['movieID'],$info['name'],$info['filePath'],$info['category'],$info['quocGia'],
            $info['duration'],$info['ngayChieu'],$info['ngon_ngu'],$info['director'],$info['nsx'],
            $info['actor'],$info['noiDung'],$info['ma_nhan'],$info['tinhTrang'],$info['videoID']);

            if(!($statement->execute())){
                return $statement->error;
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
                    , "Description" => $row["noidung"], "Rated" => $row["ma_nhan"], "Status" => $row["tinh_trang"], "YoutubeID" => $row['youtubeID']); 
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
                , "Description" => $row["noidung"], "Rated" => $row["ma_nhan"], "Status" => $row["tinh_trang"], "YoutubeID" => $row['youtubeID']); 
                $movie = new movie($info);
                return $movie;
            }else{
                return "No DATA";
            }
        }

        public function insertKTG($info){
            $statement = $this->conn->prepare("INSERT into ktg values(?,?,?)");
            $statement->bind_param("sss",$info['ma_ktg'],$info['date'],$info['ktg']);

            if(!($statement->execute())){
                return $statement->error;
            }
            if($statement->affected_rows>0){
                return true;
            }
        }

        public function insertLichChieu($info){
            $statement = $this->conn->prepare("INSERT into lichchieu values(?,?,?)");
            $statement->bind_param("sss",$info['ma_ktg'],$info['movieID'],$info['ma_rap']);

            if(!($statement->execute())){
                return $statement->error;
            }
            if($statement->affected_rows>0){
                return true;
            }
        }

        public function getMovieSchedule($ID,$date,$rap){
            $SQLquery = "SELECT ktg.ma_ktg,ktg.gio_chieu,rap.ma_rap,rap.ma_dinh_dang FROM ktg 
            INNER JOIN lichchieu on ktg.ma_ktg =lichchieu.ma_ktg 
            INNER JOIN rap on lichchieu.ma_rap = rap.ma_rap 
            WHERE lichchieu.ma_phim = '$ID' AND ktg.ngay_chieu ='$date'
            AND rap.ma_rap = '$rap'";
            $result = $this->conn -> query($SQLquery);
            $schedule = array();
            if($result->num_rows>0){
                while($row = $result->fetch_assoc()){
                    //$schedule[$i]["NgayChieu"] = $row['ngay_chieu'];
                    $schedule["KTG"] = $row['ma_ktg'];
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

        public function getAllGheByRap($rap){
            $SQLquery = "SELECT ma_ghe,ma_loai,ma_trang_thai FROM ghe where ghe.ma_rap = '$rap'";
            $result = $this->conn -> query($SQLquery);
            $info = array();
            $i=0;
            if($result->num_rows>0){
                while($row = $result->fetch_assoc()){
                    $info["ma_ghe"] = $row["ma_ghe"];
                    $info["ma_trang_thai"] = $row["ma_trang_thai"];
                    $info["ma_loai"] = $row["ma_loai"];
                    $info["ma_rap"] = "";
                    $ghe = new ghe($info);
                    $gheArray[$i] = $ghe;
                    $i++;
                }
                return $gheArray;
            }else{
                return "No DATA";
            }
        }

        public function veGiaoDich($info){
                $statement = $this->conn->prepare("INSERT into ve2 values(?,?,?,?,?,?,?,?)");
                $statement->bind_param("sssssiss",$info['veID'],$info['movieID'],$info['rap'],$info['maGhe'],$info['date'],$info['gia'],$info['ktg'],$info['user']);
                if(!($statement->execute())){
                    return $statement->error;
                }

            if($statement->affected_rows>0){
                return true;
            }
        }

        public function loadOccupiedGhe($info){
            $statement = $this->conn->prepare("SELECT ma_ghe FROM ve2 where ma_rap = ? and ngay = ? and ma_ktg = ?");
            $statement->bind_param("sss",$info['rap'],$info['date'],$info['ktg']);
            if(!($statement->execute())){
                return $statement->error;
            }
                $result = $statement->get_result();
            if($result->num_rows>0){
                while($row = $result->fetch_assoc()){
                    $gheOccupied[] = $row['ma_ghe'];
                }
                return $gheOccupied;
            }else{
                return null;
            }
        }

        public function getUserByEmail($email){
            $SQLquery = "SELECT * FROM user WHERE email = '$email' ";
            $result = $this->conn -> query($SQLquery);
            
            if($result->num_rows>0){
                $user = $result->fetch_assoc();
                return $user;
            }else{
                return null;
            }
        }

        public function getAccountByEmail($email){
            $SQLquery = "SELECT * FROM account WHERE email = '$email' ";
            $result = $this->conn -> query($SQLquery);
            
            if($result->num_rows>0){
                $account = $result->fetch_assoc();
                return $account;
            }else{
                return null;
            }
        }
    }

?>