<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="question.Alphabet" id="alp"></jsp:useBean>
<jsp:setProperty property="eng" name="alp"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%out.print("입력된 알파벳이 "+alp.getEng()+"은 "+
		alp.process(alp.getEng()));%>
</body>
</html>