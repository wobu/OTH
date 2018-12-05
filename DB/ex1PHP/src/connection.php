<?php
     $conn = new PDO("sqlsrv:Server=172.18.0.2;Database=bike", "test", "test");

     $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
     $conn->setAttribute(PDO::ATTR_CASE, PDO::CASE_UPPER);   
?>