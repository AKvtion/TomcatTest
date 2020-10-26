<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="messagePan.jsp" name="form">
<p>请输入你的名字：
<input type="text" name="peopleName">
<br>

<p>输入你的留言标题：
<input type="text" name="Title">
<br>

<p>输入你的留言：
<br>
<textarea name="messages" rows="10" cols="36" wrap="physical">
</textarea>
<br>
<input type="submit" value="提交信息" name="submit"> 
</form>
<form action="showMessage.jsp"  name="forml">
<input type="submit" value="查看留言版" name="look">
</form>
</body>
</html>