<?php
//Đây là chức năng hiển thị các suất chiếu
 if (empty($lichChieu)) {
     echo "<div class=\"col-sm-12 col-md-4 col-lg-3 alert alert-danger\" role=\"alert\">
          No Data :(
          </div>";
 } else {
     foreach ($lichChieu as $lich) {
         if ($lich<>null) {
             foreach ($lich["GioChieu"] as $gio_chieu) {
                 ?>
<div class="table-responsive" id="<?= $lich["MaRap"]?>">
    <table class="table">
        <thead>
            <tr>
                <th>
                    <?=$lich["DinhDang"]." - ".$lich["MaRap"]?>
                </th>
            </tr>
            <tr>
                <td><a href="datVe.php?id=<?= $ID ?>&date=<?= $date ?>&gio_chieu=<?= $gio_chieu ?>&rap=<?= $lich["MaRap"] ?>&ktg=<?= $lich["KTG"]?>">
                        <?= $gio_chieu?>
                    </a>
                </td>
            </tr>
        </thead>
    </table>
</div>
<?php
             }
         }
     }
 }
?>
