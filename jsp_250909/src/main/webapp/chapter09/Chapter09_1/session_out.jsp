<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
		//세션을 없애고 세션에 속한 값들 제거
		session.invalidate(); 
		response.sendRedirect("session.jsp");
		%>
</body>
</html>