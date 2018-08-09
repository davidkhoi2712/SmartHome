<?php
	if(wincache_ucache_exists('control')) {
		echo wincache_ucache_get('control');
		wincache_ucache_delete('control');
	}
	$onoff = $_GET["onoff"]; 
	wincache_ucache_set('onoff', $onoff);
	/*$filename = "control.txt";
	$file = fopen($filename, "r");
	$filesize = filesize($filename);
	$filetext = fread($file, $filesize);
	fclose($file);
	if($filetext != null) {
		echo $filetext;
		unlink('control.txt');
	}
	$var1 = $_GET["onoff1"];
	$filename1 = "onoff1.txt";
	$file1 = fopen($filename1, "w");
	fwrite($file1, $var1);
	fclose($file1);
	$var2 = $_GET["onoff2"];
	$filename2 = "onoff2.txt";
	$file2 = fopen($filename2, "w");
	fwrite($file2, $var2);
	fclose($file2);
	$var3 = $_GET["onoff3"];
	$filename3 = "onoff3.txt";
	$file3 = fopen($filename3, "w");
	fwrite($file3, $var3);
	fclose($file3);
	$var4 = $_GET["onoff4"];
	$filename4 = "onoff4.txt";
	$file4 = fopen($filename4, "w");
	fwrite($file4, $var4);
	fclose($file4);*/
?>