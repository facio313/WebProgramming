<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/js/jquery.min.js"></script>
<script type="text/javascript">
/*
 #id 선택자는 HTML 태그의 id 속성을 사용하여 특정 요소를 찾음
 id는 페이지 내에서 고유(유일, unique)해야 하므로 단일 고유 요소를 찾으려는 경우 사용
 만약, 여러 개의 id가 존재한다면 최초의 해당 id에만 적용됨
 */
 $(function(){
	 $("button").click(function(){
		 //$("#id이름").실행_함수();
		 //버튼 클릭 시 id="test"인 요소를 찾아서 숨김(유일)
		 $("#test").hide();
	 });
 });
</script>
</head>
<body>
	body와 /body 사이를 document라고 부름
	<h2>This is a heading</h2>
	<p>This is a paragraph</p>
	<p id="test">This is a another paragraph</p>
	<button type="button">Click</button>
</body>
</html>