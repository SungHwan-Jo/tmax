<%@page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<style>

</style>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
	//websocket 사용하기 위한 변수
	var ws;
	$(document).ready(function(){
		var recv = $('#Recv');
		ws = new WebSocket("ws://localhost:9090");
		
		//websocket 서버에 연결되면 연결완료 메시지 출력
		ws.onopen = function(e){
			setConnected(true);
			recv.append("connection success <br>");
		}
		
		//websocket에서 수신한 메시지를 화면에 출력 한다.
		ws.onmessage = function(e){
			recv.append(e.data + "<br>");
		}
		
		//websocket 세션이 종료되면 화면에 출력 한다.
		ws.onclose = function(e){
			recv.append("websocket closed <br>");
		}
		
		//사용자가 입력한 메시지를 서버로 전송한다.
		function sendMessage(){
			var textSend = $('#send');
			ws.send(textSend.val());
			textSend.val("");
		}
		
		
	});

</script>
<title>Insert title here</title>
</head>
<body>
	<form>
		<input id = "send" type = "text">
		<button type = "button" onclick="sendMessage();"> 보내기 </button>
	</form>
	<div id="Recv">
	</div>
</body>
</html>