<?php
include("includes/header.php");
if(!isset($_SESSION['staff']) || $_SESSION['staff']== false){
    echo "<script>window.location = \"http://localhost/WEBAPP-Final-project/index.php\"</script>";
}
?>

<body>
    <div class="container">
        <form action="phimDB.php" method="post">
            <h2>Thông tin phim</h2>
            <div class="row">
                <!-- Container 1 -->
                <div class="col-sm-12 col-md-4">
                    <div class="form-group">
                        <label for="movieName">Tên Phim</label>
                        <input type="text" class="form-control" name="movieName" id="movieName" required>
                    </div>
                    <div class="form-group">
                        <label for="duration">Thời lượng</label>
                        <input type="number" class="form-control" name="duration" id="duration" required>
                    </div>
                    <div class="form-group">
                        <label for="director">Diễn Viên Chính</label>
                        <input type="text" class="form-control" name="actor" id="actor" required>
                    </div>
                    <div class="form-group">
                        <label for="director">Đạo Diễn</label>
                        <input type="text" class="form-control" name="director" id="director" required>
                    </div>
                    <div class="form-group">
                        <label for="nsx">Nhà Sản Xuất</label>
                        <input type="text" class="form-control" name="nsx" id="nsx" required>
                    </div>
                    <div class="form-group">
                        <label for="category">Thể Loại</label>
                        <input type="text" class="form-control" name="category" id="category" required>
                    </div>
                    <div class="form-group">
                        <label for="quocGia">Quốc Gia</label>
                        <select class="form-control" id="quocGia" name="quocGia">
                            <option>Mỹ</option>
                            <option>Việt Nam</option>
                            <option>Anh</option>
                            <option>Nhật</option>
                            <option>Pháp</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="ngayChieu">Ngày Chiếu</label>
                        <input type="date" class="form-control" name="ngayChieu" id="ngayChieu">
                    </div>
                </div><!-- END Container div -->
                <!-- Container 2 -->
                <div class="col-md-2"></div>
                <div class="col-sm-12 col-md-6">
                    <div class="custom-file">
                        <input type="file" class="custom-file-input" id="customFile" required>
                        <label class="custom-file-label" for="customFile">Choose file</label>
                    </div>
                    <div class="form-group">
                        <fieldset disabled>
                            <label for="">File đã chọn</label>
                            <input type="text" class="form-control" name="filePath" id="FilePath">
                        </fieldset>
                    </div>
                    <input type="hidden" value="" name="filePathHidden" id="filePathHidden">
                    <img class="img-fluid rounded" id="moviePic" src="">
                    <div class="form-group">
                    <label for="">Trailer URL</label>
                    <input type="text" class="form-control" name="videoID" id="videoID" required>
                    </div>
                </div>
            </div><!-- END ROW -->

            <div class="form-group">
                <label for="">Nội Dung</label>
                <textarea class="form-control" name="noiDung" rows="3"></textarea>
            </div>
            <h2>Lịch chiếu phim</h2>
            <div class="row">
                <div class="col-md-6 col-sm-12">
                    <div class="form-group">
                        <label for="ngayChieu">Ngày</label>
                        <input type="date" class="form-control" name="date" id="date" min="<?= date("Y-m-d") ?>">
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" name="rap[]" type="checkbox" value="RAP01" id="rap1">
                        <label class="form-check-label" for="rap1">
                            Rạp 1
                        </label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" name="rap[]" type="checkbox" value="RAP02" id="rap2">
                        <label class="form-check-label" for="rap2">
                            Rạp 2
                        </label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" name="rap[]" type="checkbox" value="RAP03" id="rap3">
                        <label class="form-check-label" for="rap3">
                            Rạp 3
                        </label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" name="rap[]" type="checkbox" value="RAP04" id="rap4">
                        <label class="form-check-label" for="rap4">
                            Rạp 4
                        </label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" name="rap[]" type="checkbox" value="RAP05" id="rap5">
                        <label class="form-check-label" for="rap5">
                            Rạp 5
                        </label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" name="rap[]" type="checkbox" value="RAP06" id="rap6">
                        <label class="form-check-label" for="rap6">
                            Rạp 6
                        </label>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="form-group">
                        <label for="ktg">Giờ</label>
                        <select class="form-control" id="ktg" name="ktg">
                            <option>9:00</option>
                            <option>10:30</option>
                            <option>11:00</option>
                            <option>13:00</option>
                            <option>14:45</option>
                            <option>15:00</option>
                            <option>17:00</option>
                            <option>20:15</option>
                            <option>20:15</option>
                        </select>
                    </div>
                    <button class="col-sm-2 btn btn-primary float-right form-control" style="margin-bottom: 2em" type="submit"><i
                            class="material-icons">
                            add_circle
                        </i></button>
                </div>
            </div>
        </form>
    </div><!-- END Container -->
</body>
<?php
include("includes/footer.php");
?>