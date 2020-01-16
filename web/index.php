<?php
$msg = "Paradam, Hello!" . ':';
$count = 0;

function countMsg($msg, &$count){
    return $msg . ++$count;
}
echo"<h1>". countMsg($msg,$count)." </h1>";
echo"<h1>". countMsg($msg,$count)." </h1>";
echo"<h1>". countMsg($msg,$count)." </h1>";

