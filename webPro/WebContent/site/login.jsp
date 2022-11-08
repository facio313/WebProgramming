<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
	.container-fluid {
		width: 40%;
		margin: 30%;
	}
	.row {
		border: 4px solid lightgray;
		padding: 10px;
	}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-12"><input id="userId" class="form-control"></div>
			<div class="col-xs-12"><input id="userPw" type="password" class="form-control"></div>
			<div class="col-xs-12"><input id="LoginBtn" type="button" value="로그인" class="btn btn-success col-xs-12"></div>
			<div class="col-xs-12"><a href="/webPro/Join">회원가입하기</a></div>
<!-- 			<div class="col-xs-12"><a href="/webPro/site/join.html">회원가입하기</a></div> -->
			<div id="d1"></div>
		</div>
	</div>
	
	<script>
	// id=loginbtn인 버튼에 클릭이벤트를 부여
	// 이벤트 실행 시 ajax통신으로 loadTest.jsp의 결과를 받아 콘솔에 직기
	// loadTest.jsp => 1027 폴더 참고
	$('#LoginBtn').click(function(){
		var data = "userId=" + $('#userId').val() + "&userPw=" + $('#userPw').val();
		// jsp에서는 주석에도 백틱 못 쓴다. 인식이 안 됨
		
		var req = new XMLHttpRequest();
		req.open('post', '../1027/loadTest.jsp', true);
		req.onreadystatechange = function(){
			if (req.readyState == 4 && req.status == 200) {
				// console.log(req.responseText);
				var jsObj = JSON.parse(req.responseText);
				alert(jsObj.rst);
				if (jsObj.rst == "ok"){
					// 성공 시 페이지 이동
					location.replace("/webPro/Index.do");
// 					location.href = "/Index.do";
				} else {
					// 실패 시 현재 페이지 머무르기
					location.reload();
					alert("로그인 실패");
				} 
			}
		}
		req.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
		req.send(data);
	});
	</script>
</body>
</html>