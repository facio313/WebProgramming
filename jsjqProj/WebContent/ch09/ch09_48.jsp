<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script>
	$(document).ready(function(){
    	$("button").click(function(){
        	$("ul li:first-child").hide();
	    });
	});
</script>
</head>
<body>
	<p>List 1:</p>
	<ul>
	  <li>Coffee</li>
	  <li>Milk</li>
	  <li>Tea</li>
	</ul>
	<p>List 2:</p>
	<ul>
	  <li>Coffee</li>
	  <li>Milk</li>
	  <li>Tea</li>
	</ul>
<button>Click me</button>
</body>
</html>
