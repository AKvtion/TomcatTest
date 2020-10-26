<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String str = "2";
		int num = Integer.parseInt(str);
	%>
	该数字的平方为：<%=num*num %><br>
	<a href ="index.jsp?num=<%=num %>">到达index页面</a>
	
</body>
</html>