<%@page contentType="text/html; charset=euc-kr" %>
<%
out.println("<font color=red size=5>Session Set</font><br><p>");
out.println("Container ID : " + System.getProperty("jvmid") + "<br>");
out.println("Session ID : " + session.getId() + "<br><p>");

String id=request.getParameter("id");

out.println("Request Parameter : " + id + "<br>");
session.setAttribute("id", id);

out.println("Session Set : " + id + "<br>");
out.println("Session Get : " + (String) session.getAttribute("id") + "<br><p>");
%>
<a href=getSession.jsp>getSession 이동</a>
<p><a href=index.jsp>첫페이지로</a>
