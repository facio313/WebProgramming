<%@ page language="java" contentType="text/html; charset=UTF-8"%>
	<% // 스크립틀릿 : 지역변수
	request.setCharacterEncoding("UTF-8");
	String userId = request.getParameter("id");
	String password = request.getParameter("password");
	// 호스트명
	String hostValue = request.getHeader("host");
	// 설정된 언어
	String alValue = request.getHeader("accept-language");
	%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="/js/jquery.min.js"></script>
<title>Implicit Objects</title>
</head>
<body>
	<p>아이디 : <%= userId %></p>
	<p>비밀번호 : <%= password %></p>
	<p>호스트명 : <%= hostValue %></p>
	<p>설정된 언어 : <%= alValue %></p>
</body>
</html>