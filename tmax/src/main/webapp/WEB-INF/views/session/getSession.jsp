<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="com.tmax.app.MemoryTest" %>
<%
out.println("<font color=red size=5>Session Get</font><br><p>");
out.println("Container ID : " + System.getProperty("jvmid") + "<br>");
out.println("Session ID : " + session.getId() + "<br>");
out.println("Session Get : " + (String) session.getAttribute("id") + "<br><p>");

out.println("Session Timeout : " + session.getMaxInactiveInterval() + " sec.<br>");
out.println("Session Timeout : " + session.getMaxInactiveInterval() / 60 + " min.<br>");
out.println("Session Timeout : " + (double) session.getMaxInactiveInterval() / 3600 + " hour.<br><p>");
out.println("session.getLastAccessedTime() : " + new java.util.Date(session.getLastAccessedTime()).toString() + "<br>");
out.println("session.getCreationTime() : " + new java.util.Date(session.getCreationTime()).toString() + "<br>");
out.println("application serverinfo: " + application.getServerInfo() + "<br>");
out.println("servlet version : " + application.getMajorVersion()+"."+ application.getMinorVersion()  + "<br>");
out.println("JSP version : " + JspFactory.getDefaultFactory().getEngineInfo().getSpecificationVersion()  + "<br>");
System.out.println("getSession");
%>
<!DOCTYPE html>
<html>
<head>
<style>
table, td, th {
	border: 1px solid #ddd;
	text-align: left;
}

table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	padding: 15px;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>종류</th>
			<th>값</th>
		</tr>
		<tr>
			<td>세션 아이디</td>
			<td><%=session.getId() %></td>
		</tr>
		<tr>
			<td>세션 생성 시간</td>
			<td><%=new java.util.Date(session.getCreationTime()).toString() %></td>
		</tr>
		<tr>
			<td>세션 마지막 접근 시간</td>
			<td><%=new java.util.Date(session.getLastAccessedTime()).toString() %></td>
		</tr>
		<tr>
			<td>현재 페이지 머문 시간</td>
			<td><%=((session.getLastAccessedTime() - session.getCreationTime())/60000) %></td>
		</tr>
		<tr>
			<td>세션 타임아웃</td>
			<td><%=session.getMaxInactiveInterval() / 60 %> min</td>
		</tr>
		<tr>
			<td>세션 새로 생성 여부</td>
			<td><%=session.isNew()%></td>
		</tr>
		<tr>
			<td colspan="2"> <a href='/'>로그아웃</a> </td>
		</tr>
	</table>
	<p>
</body>
</html>