<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "scott";
	String password = "tiger";
	//String sql = "select column_name,data_type,data_length,nullable from user_tab_columns where table_name ='EMP'";
	StringBuffer selectQuery = new StringBuffer();
	%>
	
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="600" border="1">
		<tr>
			<td>컬럼명</td><td>컬럼형식</td><td>컬럼길이</td><td>널값여부</td>	
		</tr>
		<%
		try {
			String tname = request.getParameter("table");
			out.print("@# tname =>"+tname);
			
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			//rs = stmt.executeQuery(sql);
			selectQuery.append("select column_name");
			selectQuery.append(",data_type");
			selectQuery.append(",data_length");
			selectQuery.append(",nullable");
			selectQuery.append(" from user_tab_columns");
// 			selectQuery.append(" where table_name ='EMP'");
			selectQuery.append(" where table_name = '"+tname+"'");
			rs = stmt.executeQuery(selectQuery.toString());
			selectQuery.setLength(0); //뒤로가기 후 다른거 입력
			while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("column_name")%></td>
			<td><%=rs.getString("data_type")%></td>
			<td><%=rs.getInt("data_length")%></td>
			<td><%=rs.getString("nullable")%></td>
		</tr>
		<%
		}
		} catch (SQLException ex) {
		out.print("데이터 베이스 연결이 실패했습니다.");
		out.print(ex.getMessage());
		} finally {
		try {
		if (rs != null) {
			rs.close();
		}
		if (stmt != null) {
			stmt.close();
		}
		if (conn != null) {
			conn.close();
		}

		} catch (SQLException se) {
		se.printStackTrace();
		}
		}
		%>
	</table>
</body>
</html>


