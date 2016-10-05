


<!DOCTYPE html>

<html lang="sv">
<head>
	<meta charset="UTF-8">
	<title>Artikel </title>
<style type="text/css" >
		
		   body{
				font-family: sans-serif;
				width:500px;
				margin: auto;
				background-color:#126767;
				
				}
						
		</style>

	

</head>
<body>




<?php
session_start();

$_SESSION['temp_username'] = session_id();
require 'dbconnect.php';

$dbcon=anslutdb();

$result=$dbcon->query('select * from artikel');

while(($data =$result->fetch())!==false){


echo <<<ARTIKEL
<div id="form">
<fieldset>
 <legend>artikel:{$data['rubrik']}</legend>

  
<div id="pris">
<h1> Pris: 8500:- </h1>
</div>


<div class="bild1"></div>
<img src="">
<div id="text">
<p> En extremt bra dator. Den bästa datorn du kan hitta för det här priset. Du behöver inte leta länge för att förstå att denna produkt är BÄST i test!</p>
</div>
<form action = "orderProcessor.php" method = "GET">

<input type="hidden"name="id" value="{$data['artikelid_pk']}">

<select name="antal">
	<option value="1">1</option>
	<option value="2">2</option>
	<option value="3">3</option>
	<option value="4">4</option>
	<option value="5">5</option>
</select>
<input type="submit" value="lägg till">
</form>
 </fieldset>
</div>


ARTIKEL;


}
?>

</body>
</html>    

