<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 		요청에 포함된 모든 쿠키 배열 가져옴 -->
	<% 
	Cookie[] cookies = request.getCookies();
	// 쿠키가 없으면 로그인 페이지로 이동
		for(int i = 0; i<cookies.length;i++){
			if(cookies[i].getName().equals("UserId")){
		%>
		<h4><%= cookies[i].getValue() %>님 반값습니다.</h4>
		<%
		}	
	}
%>
	<a href="cookie_out.jsp">로그아웃</a>
</body>
</html>