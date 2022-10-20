<?php
ini_set('max_execution_time', 0);
$opcion = $_POST['opcion'];

/* SCRIPT MySQL */
if ($opcion == '1') {
    $mysqli = new mysqli('localhost', 'root', '', 'db_petrofai');
    $mysqli->set_charset('utf8');
    if ($mysqli->connect_error) {
        die('Error en la conexion' . $mysqli->connect_error);
    }

    $j = 0;
    for ($i = 0; $i < 1000000; ++$i) {

        $nombre_actividad = "Actividad-" . $i;
        $descripcion = "Descripcion-" . $i;
        $consulta = "INSERT INTO actividad (nombre, descripcion) VALUES ('$nombre_actividad','$descripcion')";

        /* $texto = 'Provincia-' . $i;
        $consulta = "INSERT INTO provincia (nombre) VALUES ('$texto')"; */
        $result =  $mysqli->query($consulta);
        $j++;
    }
} else {
    /* SCRIPT PostgreSQL */
    $host        = "host = localhost";
    $port        = "port = 5432";
    $dbname      = "dbname = PetroFAI";
    $credentials = "user = postgres password=root";

    $db = pg_connect("$host $port $dbname $credentials");
    if (!$db) {
        echo "Error : Unable to open database\n";
        die('ERROR');
    }

    $j = 0;
    for ($i = 0; $i < 1000000; ++$i) {

        $nombre_actividad = "Actividad-" . $i;
        $descripcion = "Descripcion-" . $i;
        $consulta = "INSERT INTO gestion_empleados.actividad (nombre, descripcion) VALUES ('$nombre_actividad','$descripcion')";

        /*  $texto = 'Provincia-' . $i;
        $consulta = "INSERT INTO gestion_instalaciones.provincia (nombre) VALUES ('$texto');"; */
        $result =  pg_query($consulta) or die('La consulta fallo: ' . pg_last_error());
        $j++;
    }
    echo $j;
}
