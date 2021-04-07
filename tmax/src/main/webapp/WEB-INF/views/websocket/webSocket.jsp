<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<style>

</style>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="resources/css/websocket.css"> <!--외부 CSS 설정 -->
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
	//websocket 사용하기 위한 변수
	$(document).ready(function(){
		one = document.getElementById("one");
		two = document.getElementById("two");
		
		//입장 버튼을 눌렀을때 websocket 연결
		$('#enter').on("click", function(){
			alert("enter");
			connect();
		});
		
		//퇴장 버튼을 눌렀을 때 websocket 연결 해제
		$('#exit').on("click", function(){
			alert("enter");
			disconnect();
		});
		
		//msg 보내는 함수
		$('#send').on("click", function(){
			alert("enter");
			send();
		});
		
		var websocket = new WebSocket("ws://localhost:9090/chat-ws");
	});

</script>
<title>Insert title here</title>
</head>
<body>
	<div class="row">
		<div class="column one">
			ID : <input type="text" id="nickname"/> <input type="button" id = "enter" value="입장">
		</div>
		<div class="column two">
			<input type="button" id = "exit" value="퇴장">
		</div>
	</div>
	<input type="text" id="message" />
	<input type="button" id="send" value="보내기" />
	<div id = "chatarea">
	</div>
</body>
</html>