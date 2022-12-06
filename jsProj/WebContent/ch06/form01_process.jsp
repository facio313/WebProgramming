<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- JSTL
	JSP Standard Tag Library
	JSP에서 자주 사용되는 태그들을 묶어놓은 라이브러리
 -->
<%@page import="kr.or.ddit.vo.MemberVO"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/ckeditor/ckeditor.js"></script>
<title>Form Processing</title>
</head>
<body>
	<% // 스크립틀릿
		request.setCharacterEncoding("UTF-8");
	
		MemberVO mv = new MemberVO();
	
		String id      = request.getParameter("id");
		String passwd  = request.getParameter("passwd");
		String name    = request.getParameter("name");
		String postNum = request.getParameter("postNum");
		String phone1  = request.getParameter("phone1");
		String phone2  = request.getParameter("phone2");
		String phone3  = request.getParameter("phone3");
		String gender  = request.getParameter("gender");
		String hobby1  = request.getParameter("hobby1");
		String hobby2  = request.getParameter("hobby2");
		String hobby3  = request.getParameter("hobby3");
		String comment = request.getParameter("comment");
		
		mv.setId(id);
		mv.setPasswd(passwd);
		mv.setName(name);
		mv.setPostNum(postNum);
		mv.setPhone1(phone1);
		mv.setPhone2(phone2);
		mv.setPhone3(phone3);
		mv.setGender(gender);
		mv.setHobby1(hobby1);
		mv.setHobby2(hobby2);
		mv.setHobby3(hobby3);
		mv.setComment(comment);
		
		// 내장 객체 : session => 동일한 웹브라우저에서 공유
		session.setAttribute("mv", mv);
	%>
	<c:set var="mv" value="<%=mv%>" />
	<p>아이디 : ${mv.id}</p>
	<p>비밀번호 : ${mv.passwd}</p>
	<p>이름 : ${mv.name}</p>
	<p>연락처 : ${mv.phone1}${mv.phone2}${mv.phone3}</p>
	<p>성별 : ${mv.gender}</p>
	<p>취미 : ${mv.hobby1}, ${mv.hobby2}, ${mv.hobby3}</p>
	<p>
		<textarea rows="3" cols="30" name="comment">${mv.comment}</textarea>
	</p>
<%-- 	<p>아이디 : <%=id%></p> --%>
<%-- 	<p>비밀번호 : <%=passwd%></p> --%>
<%-- 	<p>이름 : <%=name%></p> --%>
<%-- 	<p>연락처 : <%=phone1%>-<%=phone2%>-<%=phone3%></p> --%>
<%-- 	<p>성별 : <%=gender%></p> --%>
<%-- 	<p>취미 : <%=hobby1%>, <%=hobby2%>, <%=hobby3%></p> --%>

	<%
	// 5초 후에  form01.jsp로 되돌아감
	response.setHeader("Refresh", "5;URL=form01.jsp");
	%>
<script>
CKEDITOR.replace("comment");
</script>
</body>
</html>