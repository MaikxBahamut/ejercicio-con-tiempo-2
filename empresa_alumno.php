<?php
 $servername = "localhost";
 $username = "root";
 $password = "maik141204";
 $dbname = "alumno_empresa base de datos";
 $conn = new mysqli($servername, $username, $password, $dbname);
 if ($conn->connect_error) {
     die("Conexión fallida: " . $conn->connect_error);
  }

  $tableName = 'empresa';
  $sql = "SELECT nombre_alumno FROM ALUMNO WHERE ALUMNO = ?";
  $stmt = $pdo->prepare($sql);
  $stmt->execute([$tableName]);
  $columnNames = $stmt->fetchAll(PDO::FETCH_COLUMN);
  
  // Mostrar los nombres de los datos de la tabla
  foreach ($columnNames as $columnName) {
      echo $columnName . '<br>';
  }






?>