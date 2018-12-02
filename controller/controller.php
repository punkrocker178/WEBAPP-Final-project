<?php
require_once ('../model/model.php');

class controller{

    public $model;

    public $rap = array("RAP01","RAP02","RAP03","RAP04","RAP05","RAP06");

    public function __construct()
    {
        $this->model = new model();
    }

    public function invoke(){

        if (isset($_GET['action'])){

            $action = $_GET['action'];

            if ($action == 'view'){
                $this->handleViewAction();
            }
            else{
                $this->defaultAction();
            }
        }
    }
    //Hiển thị mọi phim
    private function defaultAction(){
        // $data = $this->model->getCustomers();
        $movies = $this->model->getMovies();
        include ("view/list_all_phim.php");
    }

    //Khi bam vao 1 phim bat ki
    private function handleViewAction(){

    }

    //Mua vé của 1 phim
    private function handleBuyAction(){

    }

    private function handleViewByDateAction(){
        for($i=0;$i<count($this->rap);$i++){
            $data = $this->model->getMovieSchedule($ID,$date,$this->rap[$i]);
            if($data<>"No DATA"){
              $lichChieu[$this->rap[$i]] = $data;
            }
        }
        include("view/view_phim.php");
    }
}

?>