<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/main.css"> <!--외부 CSS 설정 -->
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
	$(document).ready(function(){
		$('#pupupBtn').on("click", function(){
			alert("click");
			window.open("/webSocket.do", "test","width=500, height=600");
		});
	});

</script>
<title>main page</title>
</head>
<body>
	<div class="header">
  		<h1>Header</h1>
	</div>
	<div class="topnav">
  		<a href="localhost:9090/main.do">HOME</a>
  		<a href="https://stims.tmax.co.kr/">TIMS</a>
  		<a href="https://technet.tmaxsoft.com/">TechNet</a>
  		<a href="https://tmax.ezwel.com/">ezwel</a>
	</div>
	<div class="row">
		<div class="column side">
			<h2>Side</h2>
			<p>left</p>
		</div>

		<div class="column middle">
			<h2>Main Content</h2>
			<p><a href="/getSession.do">Http Session TEST</a></p>
			<p id="pupupBtn"><a href="#">WebSocet TEST</a></p>
			<p><a href="/classInfo.do">ClassInfo TEST</a></p>
		</div>

		<div class="column side">
			<h2>Side</h2>
			<p>right</p>
		</div>
	</div>

</body>
</html>