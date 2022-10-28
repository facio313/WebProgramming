<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$(":checked").wrap("<span style='background-color:red'>");
	});
</script>
</head>
<body>
	<form action="">
		Name: <input type="text" name="user"><br>
		bike: <input type="checkbox" name="vehicle" value="Bike"><br>
		car: <input type="checkbox" name="vehicle" value="Car" checked="checked"><br>
		airplane: <input type="checkbox" name="vehicle" value="Airplane"><br>
</form>

</body>
</html>
