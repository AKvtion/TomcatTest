<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>页面信息共享，跟踪！！</h1>
<%
	
	session.setAttribute("username","Mike");
	Cookie cookie = new Cookie("username","Mike");
	response.addCookie(cookie);
	
%>
<a href="urlInfo.jsp?username=Mike">URL方式信息跟踪</a><br>
<a href="cookieInfo.jsp">COOKIE方式信息跟踪</a><br>
<a href="sessionInfo.jsp">SEENION方式信息跟踪</a>
</body>
</html>