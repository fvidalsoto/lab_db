<?php
/* CONEXION MySQL */
/* $mysqli = new mysqli('localhost', 'root', '', 'db_petrofai');
$mysqli->set_charset('utf8');
if ($mysqli->connect_error) {
    die('Error en la conexion' . $mysqli->connect_error);
} */
?>

<?php
/* CONEXION Postgres */
$host        = "host = localhost";
$port        = "port = 5432";
$dbname      = "dbname = PetroFAI";
$credentials = "user = postgres password=root";

// Conectando y seleccionado la base de datos  
$db = pg_connect("$host $port $dbname $credentials");
if (!$db) {
    echo "Error : Unable to open database\n";
}
