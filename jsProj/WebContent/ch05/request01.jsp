<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="/js/jquery.min.js"></script>
<title>Implicit Objects</title>
</head>
<body>
	<!-- 
	URI : request01_process.jsp?id=a001&password=java
	URL : request01_process.jsp
	요청 파라미터 : 			id=a001&password=java <= request 객체가 갖고 있음
	 -->
	<form action="request01_process.jsp" method="post">
		<p>아이디 : <input type="text" name="id" /></p>
		<p>비밀번호 : <input type="text" name="password" /></p>
		<p><input type="submit" value="전송" /></p>
	</form>
</body>
</html>