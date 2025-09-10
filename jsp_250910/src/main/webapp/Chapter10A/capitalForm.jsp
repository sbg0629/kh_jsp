<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="question.Capital" id="cap"></jsp:useBean>
<jsp:setProperty property="eng" name="cap"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%out.print("입력된 알파벳이 "+cap.getEng()+"은 "+
		cap.process());%>
</body>
</html>