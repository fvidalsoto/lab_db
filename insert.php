<?php
require('./conexion.php');

/* SCRIPT MySQL */
$j = 0;
for ($i = 0; $i < 1000000; ++$i) {
    $texto = 'Provincia-' . $i;
    $consulta = "INSERT INTO provincia (nombre) VALUES ('$texto')";
    $result =  $mysqli->query($consulta);
    $j++;
}

echo $j;

/* SCRIPT PostgreSQL */
/* 
$j = 0;

for ($i = 0; $i < 1000000; ++$i) {
    $texto = 'Provincia-' . $i;
    $consulta = "INSERT INTO gestion_instalaciones.provincia (nombre) VALUES ('$texto');";
    $result =  pg_query($consulta) or die('La consulta fallo: ' . pg_last_error());
    $j++;
}

echo $j;
 */
