<?php
    class ghe{
        private $gheID,$maLoai,$maTrangThai,$maRap;

        public function __construct($info)
        {
            $this->gheID = $info['ma_ghe'];
            $this->maLoai = $info['ma_loai'];
            $this->maTrangThai = $info['ma_trang_thai'];
            $this->maRap = $info['ma_rap'];
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