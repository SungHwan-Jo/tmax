<!DOCTYPE html>
<html>
<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="com.tmax.app.MemoryTest"%>
<% 
MemoryTest memory = new MemoryTest();
memory.addObject(50000);
try{
	out.println("holidng memory. it will be stopped after 10 min");
	Thread.sleep(600000);
}catch(InterruptedException e){
	e.printStackTrace();
}
%>

<head>
<meta charset="UTF-8">
<title>memory Test</title>
</head>
<body>
	<h1>meomry Test</h1>
</body>
</html>