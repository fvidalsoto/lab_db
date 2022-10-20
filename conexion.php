<?php
/* CONEXION MySQL */
$mysqli = mysqli_connect('localhost', 'root', 'root', 'db_petrofai', '3307');
$mysqli->set_charset('utf8');
if ($mysqli->connect_error) {
    die('Error en la conexion' . $mysqli->connect_error);
}else{
    echo "macabro";
}


/* CONEXION Postgres */
// $host        = "host = localhost";
// $port        = "port = 5432";
// $dbname      = "dbname = PetroFAI";
// $credentials = "user = postgres password=bruno";

// // Conectando y seleccionado la base de datos  
// $db = pg_connect("$host $port $dbname $credentials");
// if (!$db) {
//     echo "Error : Unable to open database\n";
// }else{
//     echo "Listorti";
// }
