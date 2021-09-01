<?php
	
	
			$name =  "" ;

			 if ($_SERVER["REQUEST_METHOD"] == "POST"){
			 	$name =  test_input($_POST['name']);
			 }
			  function test_input($data) {
            $data = trim($data);
            $data = stripslashes($data);
            $data = htmlspecialchars($data);
            return $data;
          }

          $data = fopen("$name","r") or die("Unable to open file!");
	       echo fread($data,filesize("$name"));	
	       fclose($data);
	
?>




		
		
		


