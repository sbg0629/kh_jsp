<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="question.Money" id="one"></jsp:useBean>
<jsp:setProperty property="mon" name="one"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>입력된 금액이</h4>
	<%out.print(one.getMon()+"은"+"<br>"+one.process());%>
</body>
</html>