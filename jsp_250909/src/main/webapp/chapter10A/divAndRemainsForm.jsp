<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean class="question.DivAndRemains" id="div"></jsp:useBean>
<jsp:setProperty property="*" name="div"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>당신이 입력한 정보입니다.</h4>
	<% out.print("입력된 정수가 "+div.getNum()+"은 10의 자리와 1의 자리는 "
			+div.process(div.getNum())); %>
</body>
</html>