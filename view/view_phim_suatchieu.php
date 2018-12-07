<?php
 if (empty($lichChieu)) {
     echo "<div class=\"alert alert-danger\" role=\"alert\">
          No Data :(
          </div>";
 } else {
     foreach ($lichChieu as $lich) {
         if ($lich<>null) {
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
                <td><a href="datVe.php?id=<?= $ID ?>&date=<?= $date ?>&gio_chieu=<?= $lich["GioChieu"] ?>&rap=<?= $lich["MaRap"] ?>&ktg=<?= $lich["KTG"]?>">
                        <?= $lich["GioChieu"]?>
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
?>
