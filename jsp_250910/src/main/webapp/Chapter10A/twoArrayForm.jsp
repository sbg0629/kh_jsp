<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="question.TwoArray" id="two"></jsp:useBean>
<jsp:setProperty property="num" name="two"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%out.print(two.getNum()+"*"+two.getNum()+"은"+"<br>"+two.process()); %>
</body>
</html>