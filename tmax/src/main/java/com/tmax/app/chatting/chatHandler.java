package com.tmax.app.chatting;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

//websocket 사용시 채팅 핸들러 자바 파일
public class chatHandler extends TextWebSocketHandler {
	
	private static List<WebSocketSession> list = new ArrayList<WebSocketSession>();


	//클라이언트가 접속했을 때 호출되는 메소드
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		list.add(session);
		System.out.println("클라이언트 연결됨");
	}


	//클라이언트가 메시지를 보냈을 때 호출되는 메소드
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		String msg = message.getPayload();
		//전송된 메시지를 모든 세션들에게 보냄
		for(WebSocketSession s : list) {
			s.sendMessage(new TextMessage(session.getAcceptedProtocol() + ":" + msg));
		}
		super.handleTextMessage(session, message);
	}

	//클라이언트가 접속을 종료했을 때 호출되는 메소드
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		
		System.out.println("클라이언트 연결 종료됨");
		list.remove(session);
	}


	
	

}
