<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$("#radio").click(function(){
			$(":radio").wrap("<span style='background-color:red'>");
		});
		$("#checkbox").click(function(){
			$(":checkbox").wrap("<span style='background-color:red'>");
		});
});
</script>
</head>
<body>
<form action="">
  Name: <input type="text" name="user"><br>
  Male:<input type="radio" name="sex" value="m"><br>
  Female<input type="radio" name="sex" value="f"><br>
  I have a bike: <input type="checkbox" name="vehicle" value="Bike"><br>
  I have a car: <input type="checkbox" name="vehicle" value="Car"><br>
  I have an airplane: <input type="checkbox" name="vehicle" value="Airplane"><br>
  <input type="submit">
</form>
    <button id="radio">radio Test</button>
    <button id="checkbox">checkbox Test</button>
</body>
</html>
