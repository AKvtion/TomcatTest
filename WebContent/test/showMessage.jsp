<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<%@ page import="java.util.*"%>

<body bgcolor="white">
<%
Vector<String> v=(Vector)application.getAttribute("Mess");
out.print("<table border=4>");
out.print("<tr>");
out.print("<td bagcolor=gray>"+"留言者姓名"+"</td>");
out.print("<td bagcolor=gray>"+"留言标题"+"</td>");
out.print("<td bagcolor=gray>"+"留言时间"+"</td>");
out.print("<td bagcolor=gray>"+"留言内容"+"</td>");
out.print("</tr>");
if(v!=null){
for(int i=0;i<v.size();i++){
	String message=v.elementAt(i);
	 byte bb[]=message.getBytes("GB2312");
	 message=new String(bb);
	String a[]=message.split("#");
out.print("<tr>");
int number=a.length-1;
for(int k=0;k<=number;k++){
	if(k<number)
		out.print("<td bgcolor=gray>"+a[k]+"</td>");
	else
		out.print("<td><TextArea bgcolor=gray rows=6 cols=14>"+a[k]+"</TextArea></td>");
	
	}
out.print("</tr>");
}
}
out.print("</table>");
%>
<a href="submit.jsp">返回留言版</a>
</body>
</html>