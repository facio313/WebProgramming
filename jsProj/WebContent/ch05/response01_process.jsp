<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="/js/jquery.min.js"></script>
<title>Implicit Objects</title>
</head>
<body>
	<%
		String userId = request.getParameter("id");
	String password = request.getParameter("password");
	%>

	<c:set var="id" value="<%=userId%>" />
	<c:set var="password" value="<%=password%>" />
	아이디 : ${id}, 비밀번호 : ${password}
	<br>
	
<script>
let varId = "${id}";
let password = "${password}";

if (varID == "a001" && password == "java") {
	location.href="response01_success.jsp";
} else {
	location.href="response0_failed.jsp";
}
</script>
	<%
		// userId가 a001이고 password가 java라면
	if (userId.equals("a001") && password.equals("java")) {
		// 	 	response01_success.jsp 페이지로 이동
		// 		response.sendRedirect("response01_success.jsp");
		// 아니면
	} else {
// 		response01_failed.jsp로 페이지 이동
// 		response.sendRedirect("response01_failed.jsp");
	}
	%>
</body>
</html>