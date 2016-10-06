<?php

session_start();
require('dbconnect.php');


$dbcon=anslutdb();


$result=$dbcon->query('select * from cart');

while(($data =$result->fetch())!==false){



if($_SESSION['temp_username']==$data['user'])


echo <<<SHOWCART


id =   {$data['artikelid_fk']}
antal= {$data['antal']}

<br>

SHOWCART;




}