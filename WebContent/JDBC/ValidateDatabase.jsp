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
			Class.forName("com.mysql.jdbc.Driver"); //加载MYSQL JDBC驱动程序   
			System.out.println("Success loading Mysql Driver!");

		} catch (Exception e) {
			System.out.print("Error loading Mysql Driver!");
			e.printStackTrace();
		}
		try {
			
			Connection connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/softwarel?useUnicode=true&characterEncoding=utf-8", "root",
					"0922");//你自己设的密码

			System.out.println("Success connect Mysql server!");
			Statement stmt = connect.createStatement();
			String account = request.getParameter("account");
			String password = request.getParameter("password");
		//	String sql = "select * from webstudent where waccuont='" + account + "' and wpassword='" + password+ "'";
			String sql = "select * from webstudent";	
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				String a = rs.getString("waccuont");
				String b = rs.getString("wpassword");
				if(account.equals(a)&&password.equals(b)){
					out.println("登陆成功！");
				}else{
					out.println("登陆失败！");
				}
			}

		} catch (Exception e) {
			System.out.print("get data error!");
			e.printStackTrace();
		}
	%>

	<!--
	if (rs.next()) {
				out.print("登录成功");
			} else {
				out.print("登录失败");
			} 
	==============
	
			/*account 为你表的名称，可以在MySQL命令行用show tables；显示
			String sql = "select * from webstudent where wpassword="+password;*/

/*while(rs.next()){
				String second = rs.getString("wpassword");
				if(second!=password){
					out.print("成功");
				}else{
					out.print("失敗");
				}
			}
				==============
			
			if(rs!=null){
			while (rs.next()) {
			//String first = rs.getString("waccuont"); first == account ||
			String second = rs.getString("wpassword");
				if ( second == password) {
					out.println("登录成功！");
				} else {
					out.println("登录失敗！");
					}
				}			
			}else{
				out.println("登录失敗！");	
			}*/ -->
</body>
</html>