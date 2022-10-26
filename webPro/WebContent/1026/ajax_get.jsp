<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%
	/* request.setCharacterEncoding("utf-8"); */
	String get = request.getParameter("dataNm"); // get
	String post = request.getParameter("key"); // post
%>

넘어온 데이터(get) : <%=get %>
넘어온 데이터(post) : <%=post %>