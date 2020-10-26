package servlet;

import java.sql.*;
public class Jdbc {
  public static void main(String args[]) {
    try {
      Class.forName("com.mysql.jdbc.Driver");     //����MYSQL JDBC��������   
      //Class.forName("org.gjt.mm.mysql.Driver");
     System.out.println("Success loading Mysql Driver!");
    }
    catch (Exception e) {
      System.out.print("Error loading Mysql Driver!");
      e.printStackTrace();
    }
    try {
      Connection connect = DriverManager.getConnection(
          "jdbc:mysql://localhost:3306/softwarel","root","j0922");//java�������д�������Լ��������
           
      System.out.println("Success connect Mysql server!");
      Statement stmt = connect.createStatement();
      ResultSet rs = stmt.executeQuery("select * from book");
                  //user Ϊ�������ƣ�������MySQL��������show tables����ʾ
while (rs.next()) {
        System.out.println(rs.getString("INd"));
        System.out.println(rs.getString("BID"));
        System.out.println(rs.getString("BName"));
        System.out.println(rs.getString("author"));

      }
    }
    catch (Exception e) {
      System.out.print("get data error!");
      e.printStackTrace();
    }
  }
}
