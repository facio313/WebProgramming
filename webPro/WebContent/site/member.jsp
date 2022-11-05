<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page import="site.MemberVO"%>
<%@ page import="org.apache.commons.beanutils.BeanUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	// 	String userId = request.getParameter("mem_id");
// 	String userPw = request.getParameter("mem_pw");
// 	String userNm = request.getParameter("mem_nm");
// 	String userHp = request.getParameter("mem_hp");
// 	String userEm = request.getParameter("mem_em");
// 	String userAdd = request.getParameter("mem_add");
// 	... 이걸 어느 세월에 다 박고 있어?? -> 간편화할 수 있는 라이브러리 존재
		
	// 처리를 쉽게 도와주는 library 활용하기
	MemberVO vo = new MemberVO();
	BeanUtils.populate(vo, request.getParameterMap());
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	Connection conn = DriverManager.getConnection(url, "in91", "java");
// 	Statement stmt = conn.createStatementg;();
// 	String sql = " INSERT INTO MEMBER (mem_id, mem_pass, mem_name, mem_bir, mem_zip, mem_add1, mem_add2, mem_hp, mem_mail) "
// 	+ " VALUES ( " + vo.getMem_id() + ", "
// 				 + vo.getMem_pass() + ", "
// 				 + vo.getMem_name() + ", "
// 				 + vo.getMem_bir() + ", "
// 				 + vo.getMem_zip() + ", "
// 				 + vo.getMem_add1() + " , "
// 				 + vo.getMem_add2() + ", "
// 				 + vo.getMem_hp() + ", "
// 				 + vo.getMem_mail() + ") ";
// 	stmt.executeUpdate(sql);
	
	String sql = " INSERT INTO MEMBER (mem_id, mem_pass, mem_name, mem_bir, mem_zip, mem_add1, mem_add2, mem_hp, mem_mail) "
		 	+ " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1, vo.getMem_id());
	pstmt.setString(2, vo.getMem_pass());
	pstmt.setString(3, vo.getMem_name());
	pstmt.setString(4, vo.getMem_bir());
	pstmt.setString(5, vo.getMem_zip());
	pstmt.setString(6, vo.getMem_add1());
	pstmt.setString(7, vo.getMem_add2());
	pstmt.setString(8, vo.getMem_hp());
	pstmt.setString(9, vo.getMem_mail());
	
	int a = pstmt.executeUpdate();
	System.out.println("?????????" + a);
%>