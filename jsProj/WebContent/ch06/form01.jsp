<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="kr.or.ddit.vo.MemberVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
// session.setAttribute("mv", mv);
MemberVO mv = (MemberVO)session.getAttribute("mv");
%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="/js/jquery.min.js"></script>
<script type="text/javascript" src="/ckeditor/ckeditor.js"></script>
<title>Insert title here</title>
</head>
<body>
<!--  input 태그 정리
1. type
	- text : 한 줄 텍스트 입력
	- radio : 라디오 버튼 중 하나만 선택
	- checkbox :  다중 선택
	- password : 암호 입력
	- hidden : 숨기기
	- file : 파일 업로드
	- button : 버튼 모양
	- reset : 폼 데이터 초기화
	- submit : 서버로 전송
2. name : 입력 양식 식별(유일함)
3. value : 초깃값 설정
 -->
	<h3>회원 가입</h3>
	<form action="/ch06/form01_process.jsp" name="member" method="post">
		<!--
		required : 필수
		placeholder : 힌트
		autofocus : 자동 포커스 
		-->
		<c:set var="mv" value="<%=mv%>" />
		<p>
			아이디 : <input type="text" name="id" required placeholder="아이디를 입력해주세요" autofocus value="${mv.id}">
			<!-- 클릭하여 a001, b001, c001이 아닌지 검사하여 중복되었다면 "아이디가 중복되었습니다."를 alert하고 아이디 입력란을 초기화한 후 autofocus 처리해보자 -->
			<input type="button" value="아이디 중복 검사" onclick="checkId()"">
			<span></span>
		</p>
		<p>비밀번호 : <input type="password" name="passwd" required placeholder="알파벳과 숫자의 혼합" value="${mv.passwd}"></p>
		<!-- 최대 글자 수 => maxlength -->
		<p>이름 : <input type="text" name="name" maxlength="7" size="7" required value="${mv.name}"></p>
		<p>
			<!-- 읽기 전용 => 단지 읽기만 함 => readonly-->
			우편번호 : <input type="text" name="postNum" readonly value="${mv.postNum}">
			<button type="button" onclick="postCode()">우편번호 검색</button>
		</p>
		<p>
			연락처 : <input type="text" maxlength="4" size="4" name="phone1" value="${mv.phone1}">
			- <input type="text" maxlength="4" size="4" name="phone2" value="${mv.phone2}">
			- <input type="text" maxlength="4" size="4" name="phone3" value="${mv.phone3}">
		</p>
		<!-- checked 속성 : 기본값 미리 선택. radio / checkbox -->
		<p>
			성별 : <input type="radio" name="gender" value="남성"
				<c:if test="${mv.gender=='남성'}">checked</c:if>
			> 남성
			<input type="radio" name="gender" value="여성"
				<c:if test="${mv.gender=='여성'}">checked</c:if>
			> 여성
		</p>
		<p>
			취미 : 독서<input type="checkbox" name="hobby1" value="독서" <c:if test="${mv.hobby1=='독서'}">checked</c:if>>
			운동<input type="checkbox" name="hobby2" value="운동" <c:if test="${mv.hobby2=='운동'}">checked</c:if>>
			영화<input type="checkbox" name="hobby3" value="영화" <c:if test="${mv.hobby3=='영화'}">checked</c:if>>
		</p>
		<p>
			<!-- rows : 줄 수 / cols : 열 수 -->
			<textarea rows="3" cols="30" name="comment" placeholder="가입 인사를 입력해주세요">${mv.comment}</textarea>
		</p>
		<p>
			<!-- 폼 데이터 내용이 채어져야지만 활성화-->
			<!-- 비활성 -> disabled-->
			<input type="submit" value="가입하기">
			<!-- reset : 폼데이터의 데이터를 초기화 -->
			<input type="reset" value="다시 쓰기">
		</p>
	</form>
<script>
var id = "";
function checkId() {
	id = document.querySelector("input[name='id']");
	if (id.value == "a001" || id.value == "b001" || id.value == "c001") {
		alert("아이디가 중복되었습니다.");
		id.focus();
	} else if (id.value == ""){
		alert("아이디 입력점");
	} else {
		document.querySelector("span").innerHTML = "사용 가능";
	}
}

function postCode() {
	post = document.querySelector("input[name='postNum']");
	post.value = "33211";
}

CKEDITOR.replace("comment");
</script>
</body>
</html>