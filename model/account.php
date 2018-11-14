<?php
    class account{

        private $id;
        private $email;
        private $password;

        public function __construct($id, $email, $password)
        {
            $this->id = $id;
            $this->email = $email;
            $this->password = $password;
        }
    }
?>