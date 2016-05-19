<?php
$username = "acloudguru";
$password = "acloudguru";
$hostname = "";
$dbaname = "acloudguru";

//connection to the Database
$dbhandle = mysql_connect($hostname, $username, $password)
 	or die("unable to connect to to MySQL");
 echo "Connected to MySQL using username - $username, password - $password, host - $hostname<br>";
 $selected = mysql_select_db("$dbaname",$dbhandle)
 	or die("Could not select database");
 echo "Connected to Database - $dbname";
 ?>