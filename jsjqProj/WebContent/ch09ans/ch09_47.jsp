<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Untitled Document</title>
<script src="/js/jquery.min.js">
</script>
<script>
	$(document).ready(function(){
		$("#lang").click(function(){
	        $("p:lang(it)").css("background-color", "red");
		});
		$("#root").click(function(){
			$(":root").css("background-color", "yellow");
		});
	});
</script>
</head>
<body>
	<p>I live in Italy.</p>
	<p lang="it">Ciao bella!</p>
	<button id="lang">lang</button>
    <button id="root">root</button>
</body>
</html>
