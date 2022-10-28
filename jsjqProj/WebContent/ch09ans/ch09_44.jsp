<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Untitled Document</title>
<script src="/js/jquery.min.js">
</script>
<script>
	$(document).ready(function(){
		$("#has").click(function(){
		    $("div:has(p, span, li)").css("border", "solid red");
		});
	});
</script>
</head>
<body>
	<div>
		<p>This is a paragraph inside a div element.<br />
		<span>This is a span element</span>
		</p>
		<li>This is a list item inside a div element</li>
	</div>
	<br>
	<div>
	    <li>This is a list item inside a div element</li>
	</div>
    <br />
	<button id="has">has</button>
</body>
</html>
