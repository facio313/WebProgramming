<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/js/jquery.min.js"></script>
<script type="text/javascript">
	// jQuery 선택자는 jQuery 라이브러리에서 가장 중요함
	// jQuery 선택자를 사용하면 HTML DOM 구조를 탐색하여 HTML 요소를 선택하고 조작할 수 있음
	/*
	문서 객체 모델(DOM, Document Object Model)
		- XML이나 HTML 문서에 접근하기 위한 일종의 인터페이스
		- 문서 내의 모든 요소를 정의, 각각의 요소에 접근하는 방법을 제공
		-W3C의 표준 객체 모델
	*/
	// jQuery 기본 선택자는 이름, id, 클래스, 유형, 속성 등을 기반으로 HTML 요소를 찾거나 선택하는 데 사용됨
	// 모든 선택자는 달러 기호 "$"와 괄호 "()"로 시작함
	
	$(function(){
		/* $("button").on("click", function(){}); */
		$("button").click(function(){
			// $("태그 이름").실행_함수();
			// 태그 <p>에 해당하는 요소를 선택하여 모두 숨김
			$("p").hide();
		});
	});
</script>
</head>
<body>
	body와 /body 사이를 document라고 부름
	<h2>This is a heading</h2>
	<p>This is a paragraph</p>
	<p>This is a another paragraph</p>
	<button type="button">Click</button>
</body>
</html>