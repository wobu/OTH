<?php include("top.php") ?>
<?php

 $Anrede = $_POST['Salutation'];
 $Name   = $_POST['Name'];

 echo "Welcome $Anrede $Name!";

 ?>
<?php include("bottom.php") ?>
