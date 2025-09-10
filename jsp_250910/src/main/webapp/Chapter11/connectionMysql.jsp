<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% Connection con = null;
		try{
			String url = "jdbc:mysql://localhost:3306/jspdb";
			String user ="root";
			String password ="1234";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			con = DriverManager.getConnection(url, user, password);
			
			out.print("mysql 연결이 성공했습니다.");
		}catch(SQLException ex){
			out.print("mysql 연결이 실패했습니다.");
			out.print(ex.getMessage());
		}finally{
			if(con != null){
				con.close();
			}
			
		}
	
	%>
</body>
</html>

<!-- Loading class `com.mysql.jdbc.Driver'. This is deprecated. 
The new driver class is `com.mysql.cj.jdbc.Driver'.
 The driver is automatically registered via the SPI and manual 
 loading of the driver class is generally unnecessary. -->