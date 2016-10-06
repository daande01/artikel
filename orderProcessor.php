


<?php

session_start();
require 'dbconnect.php';
echo $_SESSION['temp_username'] ;



//insert into  cart(antal,artikelid_fk,cartid_pk)  values ('".$_REQUEST['antal']."','1','1')


$dbcon=anslutdb();

$stmt=$dbcon->prepare('insert into cart (antal,artikelid_fk,user) values (:an, :artid,:sessid)');

$stmt->execute(array(':an'=>$_REQUEST['antal'],':artid'=>$_REQUEST['id'],':sessid'=>$_SESSION['temp_username'] ));


/*
 create table cart(cartid_pk int(10) PRIMARY KEY AUTO_INCREMENT, user varc
har(100),antal int(10),artikelid_fk int(100));


*/
header("Location: showCart.php");


?>