<?php 
include("../includes/header.php");
include("../controller/controller.php");
?>
<section class="dang-chieu">
    <div class="container">
    <input type="hidden" name="action" value="edit">
    <input type="hidden" name="id" value="<?= $id?>">
        <h2>Phim Đang Chiếu</h2>
        <div class="row">
            <?php
				// print_r($movies);
                for ($i=0;$i<count($movies);$i++) {

                    $id = $movies[$i]->movieID;
                    $name = $movies[$i]->name;
                    $description = $movies[$i]->description;
                    $duration = $movies[$i]->duration;
                    $image = $movies[$i]->image;
                    $link = "movieDetail.php?id=".$id; 
                    if($i>5){
                        
            ?>
                    
            <div class="phim col-lg-4 col-md-6 col-xs-6 phim-hidden">
                <a href="<?= $link?>"><img class="img-fluid rounded" src="<?= $image ?>"></a>
                <button type="button" class="butt btn btn-success">Mua Vé</button>
                <h4>
                    <?= $name ?>
                </h4>
            </div>
            <!-- END PHIM -->
            <?php
                    }//End if
                }// End loop
                ?>
        </div>
        <!-- END ROW -->
    </div>
    <!-- END CONTAINER -->
<?php 
include("../includes/footer.php");
?>