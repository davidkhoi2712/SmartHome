<?php
	$var = $_GET["off"];
	wincache_ucache_set('control', $var);
	//$filename = "control.txt";
	//$file = fopen($filename, "w");
	//fwrite($file, $var);
	//fclose($file);
	//header("Location: ./index.php");
?>