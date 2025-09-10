<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class ="question.Array3" id="arr"></jsp:useBean>
<jsp:setProperty property="num" name="arr"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>입력된 정수의 갯수는 <%out.print(arr.getNum()); %>은</h4>
	<% out.print(arr.process(arr.getNum())); %>
</body>
</html>