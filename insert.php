<?php

ini_set('max_execution_time', '6000');

set_time_limit(6000);

/* SCRIPT MySQL */
for ($i = 0; $i < 1000000; $i++) {
    $texto = 'Provincia-' . $i;
    $consulta = "INSERT INTO provincia (nombre) VALUES ('$texto')";
    $result =  $mysqli->query($consulta);
}

// echo $contador;

/* SCRIPT PostgreSQL */

// for ($i = 0; $i < 1000000; $i++) {
//     $texto = 'Provincia-' . $i;
//     $consulta = "INSERT INTO gestion_instalaciones.provincia (nombre) VALUES ('$texto');";
//     $result =  pg_query($consulta) or die('La consulta fallo: ' . pg_last_error());
    
// }