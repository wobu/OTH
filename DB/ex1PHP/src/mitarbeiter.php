<?php include("top.php") ?>
<?php
     require_once("connection.php");
     
     $conn->beginTransaction();

     $sql = "Select Persnr, Name, Ort, GebDatum, Gehalt, Vorgesetzt
             From Personal";
     $stmt = $conn->query($sql);

     if (!($row = $stmt->fetch())) {
        echo "<p>Ein Mitarbeiter mit dem gewünschten Teilstring im Namen existiert nicht!</p>";
     } else {
?>
       <table class="table">
        <tr>
         <th>Persnr </th>
         <th>Name </th>
         <th>Ort </th>
         <th>GebDatum </th>
         <th>Gehalt </th>
         <th>Vorgesetzter? </th>
        </tr>
<?php
       do {
?>
         <tr>
          <td> <?php echo $row["PERSNR"]; ?> </td>
          <td> <?php echo $row["NAME"]; ?> </td>
          <td> <?php echo $row["ORT"]; ?> </td>
          <td> <?php echo $row["GEBDATUM"]; ?> </td>
          <td> <?php echo $row["GEHALT"]; ?> </td>
          <td>
           <?php echo ($row["VORGESETZT"] == null)? "Ja" : "Nein";
           ?> </td>
         </tr>
<?php
       } while ($row = $stmt->fetch());

       echo "</table></p>";
     }

	 $conn->commit();
?>
<?php include("bottom.php") ?>
