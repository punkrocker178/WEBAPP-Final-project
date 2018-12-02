<?php
    class movie{

        //thuộc tính kiểu bình thường
        private $movieID,$name,$duration,$image,$category
        ,$nationality,$date,$schedule,$language,$publisher
        ,$description,$rated,$status;

        //thuộc tính kiểu mảng
        private $director,$actors;

        public function __construct($info)
        {
            $this->movieID = $info["ID"];
            $this->name = $info["Name"];
            $this->image = $info["Image"];
            $this->category = $info["Category"];
            $this->nationality = $info["Nationality"];
            $this->duration = $info["Duration"];
            $this->date = $info["Date"];
            $this->language = $info["Language"];
            $this->director = $info["Director"];
            $this->publisher = $info["Publisher"];
            $this->actor = $info["Actor"];
            $this->description = $info["Description"];
            $this->rated = $info["Rated"];
            $this->status = $info["Status"];

        }

        public function __get($property){
            if (property_exists($this, $property)){
                return $this->$property;
              }
        }

        public function __set($property, $value) {
            if (property_exists($this, $property)) {
              $this->$property = $value;
            }
        }
    }
?>