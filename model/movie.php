<?php
    class movie{

        private $movieID;
        private $name;
        private $description;
        private $duration;
        private $image;

        public function __construct($movieID, $name, $description,$duration,$image)
        {
            $this->movieID = $movieID;
            $this->name = $name;
            $this->description = $description;
            $this->duration = $duration;
            $this->image = $image;
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