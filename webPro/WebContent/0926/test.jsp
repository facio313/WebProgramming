<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
여기는 jsp페이지...

<%
	// 해당 기호 안쪽에 자바 코드를 입력할 수 있어요
	// 주석도 이 안쪽에서 활용할 수 있음
	
	//getParameter()는 String 타입으로 리턴해줌
	String userId = request.getParameter("id");
	String userPw = request.getParameter("pw");

%>
당신의 아이디는 <%=userId %> <br>
비밀번호는 <%= userPw %>이군요!!