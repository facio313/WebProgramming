<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/js/jquery.min.js"></script>
<script type="text/javascript">
	/* 전체 선택자
	"*" 선택자는 HTML, head 및 body를 포함하여 문서의 모든 요소를 선택함
	"*" 선택자가 다른 요소와 함께 사용되면 지정된 요소 내의 모든 하위 요소를 선택함
	*/
	//태그<body>에 포함된 모든 요소를 선택
	
	$(function(){
		$("button").click(function(){
			//"*"가 다른 선택자 <body>와 함께 사용됨
			//태그 <body> 안에 포함된 모든 요소를 선택함
			$("body *").css("background-color", "yellow");
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