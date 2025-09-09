<%@page import="java.sql.Driver"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="question.Arithmetic" id="ari"></jsp:useBean>
<jsp:setProperty property="*" name="ari"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>당신이 입력한 정보입니다</h4>
	<%out.print(ari.getNum1()+"와 "+ari.getNum2()+"의 계산 결과는 "+ari.process(ari.getNum1(), ari.getNum2(), ari.getOp())); %>
</body>
</html>

