<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Google CDN 방식 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	// 웹 페이지가 로드되면 실행되는 함수
	// 문서 로드(메모리에 올라감)가 완료되기 전에 jQuery 코드가 실행되지 않도록 하기 위함
	$(document).ready(function() {
		// 버튼 요소(태그)를 클릭하면 실행되는 함수의 선언
		$("button").click(function(){
			// 모든 <p> 요소를 숨김
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