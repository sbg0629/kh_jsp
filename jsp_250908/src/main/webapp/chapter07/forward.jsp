<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<contend>
		<h4>구구단 출력하기</h4>
	</contend>
	
	<jsp:forward page ="forward_data.jsp">
	<jsp:param name ="num" value="5"></jsp:param>
	</jsp:forward>
</body>
</html>