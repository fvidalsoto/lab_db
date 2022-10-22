<?php
$opcion = $_POST['opcion'];
$opcion2 = $_POST['opcion2'];

ini_set('max_execution_time', '6000');

set_time_limit(6000);

/* SCRIPT MySQL */
if ($opcion == '1') {
    $mysqli = new mysqli('localhost', 'root', '', 'db_petrofai');
    $mysqli->set_charset('utf8');
    if ($mysqli->connect_error) {
        die('Error en la conexion' . $mysqli->connect_error);
    }

    $j = 0;

    if ($opcion2 == '1') {
        for ($i = 0; $i < 1000000; ++$i) {
            $nombre_actividad = "Actividad-" . $i;
            $descripcion = "Descripcion-" . $i;
            $consulta = "INSERT INTO actividad (nombre, descripcion) VALUES ('$nombre_actividad','$descripcion')";
        }
    } else {
        for ($i = 0; $i < 1000000; ++$i) {
            $texto = 'Provincia-' . $i;
            $consulta = "INSERT INTO provincia (nombre) VALUES ('$texto')";
            $result =  $mysqli->query($consulta);
        }
    }

    $j++;
} else {
    /* SCRIPT PostgreSQL */
    $host        = "host = localhost";
    $port        = "port = 5432";
    $dbname      = "dbname = PetroFAI";
    $credentials = "user = postgres password=bruno";

    $db = pg_connect("$host $port $dbname $credentials");
    if (!$db) {
        echo "Error : Unable to open database\n";
        die('ERROR');
    }

    $j = 0;

    if ($opcion2 == '1') {
        for ($i = 0; $i < 1000000; ++$i) {
            $nombre_actividad = chr(rand(65, 90));
            $descripcion = "Descripcion-" . $i;
            $consulta = "INSERT INTO gestion_empleados.actividad (nombre, descripcion) VALUES ('$nombre_actividad','$descripcion')";
            $result =  pg_query($consulta) or die('La consulta fallo: ' . pg_last_error());
        }
    } else {
        for ($i = 0; $i < 1000000; ++$i) {
            $nombre = rand(0, 20) . chr(rand(65, 90));
            $consulta = "INSERT INTO gestion_instalaciones.sistema_de_extraccion (nombre) VALUES ('$nombre');";
            $result =  pg_query($consulta) or die('La consulta fallo: ' . pg_last_error());
        }
    }

    $j++;

    echo $j;
}