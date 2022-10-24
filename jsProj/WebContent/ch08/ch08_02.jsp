<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	// 핸들러 함수
	function removeNode(){
		let para = document.getElementById("div1");
		let node = document.getElementsByTagName("p");
		for(let i = 0; i < node.length; i++){
			// div1 오브젝트
			// node[0], node[1]
			para.removeChild(node[i]);
		}
	}
</script>
</head>
<body>
	<div id="div1">
		body와 /body 사이를 document라고 부름
		<h2>This is a heading</h2>
		<p>This is a paragraph</p>
		<p>This is a another paragraph</p>
	</div>
		<button type="button" onclick="removeNode()">Click</button>
</body>
</html>