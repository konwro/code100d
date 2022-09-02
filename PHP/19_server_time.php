<?php
header('Content-type: text/plain');

// check server timezone
$Timezone = date_default_timezone_get();
echo "Server Timezone: " . $Timezone. "\n\n";

// set default timzeon
date_default_timezone_set('America/Chicago');

//print current date #1
echo "Current date:";
echo date('Y-m-d')."\n\n";

//print current date #2
echo "Current date:";
echo date(DATE_RFC2822)."\n\n";

?>
