<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
try {
    Class.forName("com.mysql.jdbc.Driver");     //加载MYSQL JDBC驱动程序   
   System.out.println("Success loading Mysql Driver!");
  }
  catch (Exception e) {
    System.out.print("Error loading Mysql Driver!");
    e.printStackTrace();
  }
  try {
    Connection connect = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/softwarel?useUnicode=true&characterEncoding=utf-8","root","0922");//java这个空填写的是你自己设的密码
         
    System.out.println("Success connect Mysql server!");
    Statement stmt = connect.createStatement();
    ResultSet rs = stmt.executeQuery("select * from account");
                /*account 为你表的名称，可以在MySQL命令行用show tables；显示*/
while (rs.next()) {
	out.println(rs.getString("id"));
	out.println(rs.getString("Name"));
	out.println(rs.getString("Money"));
    }
  }
  catch (Exception e) {
    System.out.print("get data error!");
    e.printStackTrace();
  }
%>
</body>
</html>