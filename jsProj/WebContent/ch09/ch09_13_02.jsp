<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Untitled Document</title>
<script src="../js/jquery.min.js">
</script>
<script>
	/* first-of-type 선택자
	:first-of-type => 특정 유형의 부모 중 첫 번째 자식인 모든 요소를 선택함
	 :last-of-type => 특정 유형의 부모 중 마지막 자식인 모든 요소를 선택함
	*/
	$(function(){
	    $("button").click(function(){
	    	//Case1
	    	//text2 글자 색상에 변화가 없음
	    	// div 하위 엘리멘트중에 p 엘리먼트가 가장 첫번째에 위치해야  
	    	//:first-child 가상클래스를 통해 선택할 수 있음
	    	// div 하위 요소중에 가장 첫번째는 div 엘리먼트이기 때문에 선택할 수 없었음
	    	//**div 밑에 p태그가 첫번째여야 함(필수)
	    	//문) 배경색을 노랑으로 바꿔보자
	    	// A>B => 부모 자식 관계
	    	// A B => 부모 자식 손녀 모두 관계
 	    	$("#div1 p:first-child").css("backgroundColor", "yellow"); // 안 됨
// 	    	$("#div1 p:nth-of-type(1)").css("background-color", "yellow"); // p중 1번째
//	    	$("#div1 :nth-of-type(1)").css("background-color", "yellow"); // div 첫 번째와 p 첫 번째 다 적용됨
// 	    	$("#div1 :nth-child(2)").css("background-color", "yellow"); // 자식들 모두 중 2번째
// 	    	$("#div1 div:first-child").css("background-color", "yellow"); // 자식들 모두 중 1번쨰
	    	

       		
	    	
	    	//Case2
	    	//text2 글자 색상에 변화가 있음
	    	//실제 p 엘리먼트만을 기준으로 카운트를 하기 때문에 선택할 수 있음
	    	//타입만을 체크함(예제는 p타입 중에 첫번째를 선택한다는 의미)
	    	//**div 밑에 p태그 중에서 첫번째이면 됨(선택)
	    	//문) 배경색을 노랑으로 바꿔보자
	    	$("#div2 p:first-of-type").css("backgroundColor", "yellow");

       		
	    });
	});
</script>
</head>
<body>
<!-- 	div2를 기준으로 p가 있는데 선택 안 됨 -->
	<div id="div1">
	    <div>text1</div>
	    <p>text2</p>
	    <p>text3</p>
	</div>
	<hr />
<!-- 	div2를 기준으로 p가 있는데 첫 번째 선택 -->
	<div id="div2">
	    <div>text1</div>
	    <p>text2</p>
	    <p>text3</p>
	</div>
	<button>Click me</button>
</body>
</html>
