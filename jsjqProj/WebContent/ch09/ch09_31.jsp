<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$("#Text").click(function(){
			$(":text").css("background-color", "red");
		});
		$("#Password").click(function(){
			$(":Password").css("background-color", "red");
		});		
	});
</script>
</head>
<body>
	<form action="">
		Name: <input type="text" name="user"><br>
		Password: <input type="password" name="password"><br>
		<button type="button">Useless Button</button>
		<input type="reset" value="Reset">
		<input type="submit" value="Submit"><br>
	</form>
    <button id="Text">Text Test</button>
    <button id="Password">Password Test</button>
</body>
</html>
