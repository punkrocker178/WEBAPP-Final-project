<?php
    class user{
        private $email;
        private $name;
        private $birthday;
        private $gender;
        private $sdt;

        public function __construct($email, $name, $birthday,$gender,$sdt)
        {
            $this->email = $email;
            $this->name = $name;
            $this->birthday = $birthday;
            $this->gender = $gender;
            $this->sdt = $sdt;
        }
    }
?>