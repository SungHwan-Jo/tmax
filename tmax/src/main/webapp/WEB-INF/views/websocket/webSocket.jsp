<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<style>
</style>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="resources/css/websocket.css">
<!--외부 CSS 설정 -->
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
	//websocket 사용하기 위한 변수
	$(document).ready(function() {
		one = document.getElementById("one");
		two = document.getElementById("two");

		//입장 버튼을 눌렀을때 websocket 연결
		$('#enter').on("click", function() {
			connect();
		});

		//퇴장 버튼을 눌렀을 때 websocket 연결 해제
		$('#exit').on("click", function() {
			disconnect();
		});

		//msg 보내는 함수
		$('#send').on("click", function() {
			send();
		});
		
		var websocket;

		//connect 함수
		function connect() {
			websocket = new WebSocket("ws://localhost:9090/chat-ws");
			websocket.onopen = onOpen;
			websocket.onmessage = onMessage;
			Websocket.onclose = onClose;
		}

		//disconnect 함수
		function disconnect() {
			var msg = document.getElementById("nickname").value;
			websocket.send(msg + "님이 퇴장하셧습니다");
			websocket.close();
		}

		//send 함수
		function send() {
			var nickname = document.getElementById("nickname").value;
			var msg = document.getElementById("message").value;
			websocket.send(nickname + ":" + msg);
			document.getElementById("message").value = "";
		}

		//웹 소켓에 연결되었을 때 호출될 함수
		function onOpen() {
			nickname = document.getElementById("nickname").value;
			two = document.getElementById("two");
			two.style.display = 'block';
			websocket.send(nickname + "님 입장하셨습니다.");
		}
		//웹 소켓에서 연결이 해제 되었을 때 호출될 함수
		function onMessage(evt) {
			data = evt.data;
			chatarea = document.getElementById("chatarea");
			chatarea.innerHTML = data + "<br/>" + chatarea.innerHTML
		}
		function onClose() {
		}
	});
</script>
<title>Insert title here</title>
</head>
<body>
	<div class="row">
		<div class="column one" id="one">
			ID : <input type="text" id="nickname" /> <input type="button"
				id="enter" value="입장">
		</div>
		<div class="column two" id="two">
			<input type="button" id="exit" value="퇴장">
		</div>
	</div>
	<input type="text" id="message" />
	<input type="button" id="send" value="보내기" />
	<div id="chatarea"></div>
</body>
</html>