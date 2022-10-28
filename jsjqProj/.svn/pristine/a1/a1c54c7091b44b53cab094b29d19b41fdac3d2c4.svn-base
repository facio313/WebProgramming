<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
	   $("#enabled").click(function(){
			$(":enabled").css("background-color", "red");
		});
		$("#disabled").click(function(){
			$(":disabled").css("background-color", "green");
		});
	});
</script>
</head>
<body>
	<form action="">
		Name: <input type="text" name="user"><br>
		ID:<input type="text" name="id" disabled="disabled">
		Age:<select disabled="disabled">
				<option>20세-30세</option>
				<option>30세-50세</option>
				<option>50세 이상</option>
			</select>
	</form>
    <button id="enabled">enabled Test</button>
    <button id="disabled">disabled Test</button>
</body>
</html>
