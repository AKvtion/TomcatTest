<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>COOKIE方式信息跟踪</h1>
<%
	Cookie[] cookies = request.getCookies();
	String username = null;
	for(int i = 0; i < cookies.length; i++){
		Cookie cookie = cookies[i];
		if(cookie.getName().trim().equals("username")){
			username = cookie.getValue();
			break;
		}
	}
	out.write("<h1>"+username+"</h1>");
%>
</body>
</html>