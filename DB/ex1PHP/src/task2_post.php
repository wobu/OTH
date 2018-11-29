<html>
<head>
   <meta http-equiv="content-type" content="text/html" charset="utf-8">
   <title>DB PHP exercise</title>
</head>

<body>
<?php
  try
  {
     switch ($_POST['Hersteller'])    // Einloggen in die Datenbank je nach Hersteller
     {
       case "Oracle":     $param1 = "oci:dbname=$_POST[Datenbank]";         
                          echo "<p>Aufbau einer Verbindung zur <b>Oracle</b>-Datenbank BIKE.</p>";
                          break;
       case "OracleUTF8": $param1 = "oci:dbname=$_POST[Datenbank];charset=utf8";         
                          echo "<p>Aufbau einer Verbindung zur <b>Oracle</b>-Datenbank BIKE.</p>";
                          break;
       case "SQLServer":  $param1 = "sqlsrv:Server=$_POST[Server];Database=$_POST[Datenbank]";  
                          echo "<p>Aufbau einer Verbindung zur <b>SQL Server</b> Datenbank BIKE.</p>";
                          break;
       case "MySQL":      $param1 = "mysql:host=$_POST[Server];dbname=$_POST[Datenbank]";
                          echo "<p>Aufbau einer Verbindung zur <b>MySQL</b> Datenbank BIKE.</p>";
                          break;
     }
      
     // neues PDO-Objekt anlegen und mit Datenbank verbinden:
     $conn = new PDO($param1, $_POST['Kennung'], $_POST['Passwort']);

     echo "<p>Die Verbindung zur Datenbank wurde hergestellt.</p>";

     $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);   // ausfuehrliches Fehlerhandling
     $conn->setAttribute(PDO::ATTR_CASE, PDO::CASE_UPPER);             // immer Grossbuchstaben als Attributrueckgabe
     $conn->beginTransaction();                                        // Transaktionsmodus

     // Die Datenbank ist geoeffnet, jetzt wird zugegriffen:
     
     $sql = "Select Name, Ort From Personal Where Persnr = 2";
     $stmt = $conn->query($sql);                          // Ausfuehren des Befehls und speichern der Ergebnisse in $stmt
     
     if ($row = $stmt->fetch())                           // Auslesen der ersten Zeile des Ergebnisses
     {
        echo "<p>Der Mitarbeiter mit der Personalnummer 2 heißt ",    // erfolgreich
             "$row[NAME] und wohnt in $row[ORT].</p>";
     } else
     {
        echo "<p>Der Mitarbeiter mit der angegebenen Nummer existiert nicht!</p>";
     }
     
     $conn->commit();  
     $stmt = null; $conn = null;    // Verbindung beendet     
     echo "<p>Die Verbindung zur Datenbank wird geschlossen.</p>";
  }
  
  // PDO Fehlerbehandlung
  catch (PDOException $e)
  {
     echo "<p>Datenbankfehler in Zeile ", $e->getLine(), " mit Fehlercode ", $e->getCode(), "<br/>",
          "Fehlertext: ", $e->getMessage(), "</p>";  
  }   

  // Globale Fehlerbehandlung
  catch (Exception $e)
  {
     echo "<p>Fehler in Zeile ", $e->getLine(), " mit Fehlercode ", $e->getCode(), "</p>",
          "<p>Fehlertext: ", $e->getMessage(), "</p>";  
  }   

?>
</body>
</html>
