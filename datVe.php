<?php
  if (!isset($_GET['date'])&&!isset($_GET['id'])&&isset($_GET['gio_chieu'])&&isset($_GET['rap'])) {
      header("http://localhost/WEBAPP-Final-project/index.php");
  }
  $ID = $_GET['id'];
  $date = $_GET['date'];
  $rap = $_GET['rap'];
  $gio_chieu = $_GET['gio_chieu'];
  echo $ID.$date;
