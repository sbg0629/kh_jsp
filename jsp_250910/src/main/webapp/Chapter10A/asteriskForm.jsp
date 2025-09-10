<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="question.Asterisk" id="ast"></jsp:useBean>
<jsp:setProperty property="num" name="ast"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>입력된 정수가<%out.print(ast.getNum()); %>은</h4>
	<%out.print(ast.process(ast.getNum())+"<br>"); %>
</body>
</html>