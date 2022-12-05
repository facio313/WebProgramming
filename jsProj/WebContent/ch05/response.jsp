<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="/js/jquery.min.js"></script>
<title>Implicit Objects</title>
</head>
<body>
	<%
		// 설정한 URL 페이지로 강제 이동
		response.sendRedirect("http://www.google.com");
		// 무한 루프에 빠질까?
// 		while (true) {
			out.print("개똥이");
// 		}
	%>
</body>
</html>