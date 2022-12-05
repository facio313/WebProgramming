<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="/js/jquery.min.js"></script>
<title>Implicit Objects(내장객체)</title>
</head>
<body>
	<!-- 
	URI : process.jsp?name=개똥이
	URL : process.jsp
	요청 파라미터(HTTP 파라미터) : name = 개똥이
	 -->
	<form action="process.jsp" method="post"> <!-- 경로가 없다면 같은 폴더 내에 있는 것 -->
		<p>이름 : <input type="text" name="name" required /> </p>
		<p><input type="submit" value="전송" /></p>
	</form>
</body>
</html>