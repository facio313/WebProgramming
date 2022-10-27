<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<%
String uId = request.getParameter("userId");
String uPw = request.getParameter("userPw");

// JDBC를 사용해서 DB정보 가져오기
Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:xe";
Connection conn = DriverManager.getConnection(url, "in91", "java");
Statement stmt = conn.createStatement();
String sql = "select mem_id from member"
	+ " where mem_id = '" + uId
	+ "' and mem_pass = '" + uPw + "'";
ResultSet rs = stmt.executeQuery(sql);

// System.out.print(rs.next()); // boolean값으로 값의 유무를 확인

if (rs.next()){%>
	{"rst":"ok"}
<%} else {%>
	{"rst":"fail"}
<%}%>