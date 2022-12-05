<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="/js/jquery.min.js"></script>
<title>Implicit Objects</title>
</head>
<body>
	<!-- 
	요청 URI : response01_process.jsp?id=a001&password=java
	 -->
	
	<form action="response01_process.jsp" method="post">
		<p>아이디 : <input type="text" name="id" required /></p>
		<p>비밀번호 : <input type="text" name="password" required /></p>
		<p><input type="submit" value="전송" /></p>
	</form>
</body>
</html>