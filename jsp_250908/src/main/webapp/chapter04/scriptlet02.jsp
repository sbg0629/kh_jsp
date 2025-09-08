<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>[스크립트릿(scriptlet)에 관한 예제]</h3>
	</center>
 <%-- 	<%//println 안 먹음 <br 해줘야함> 
 		for(int i = 0; i<5;	i++){
 			out.println("안녕하세요~"+"<br>");
 			out.print("안녕하세요~");
 		}
 	%>  --%>


	<%
		for(int i = 0; i<5;	i++){
// 			out.println("안녕하세요~"+"<br>");
// 			out.print("안녕하세요~");
	%>
		안녕하세요!<br> 
<!-- 		분리 시킬 수 있음 html 코드로 들어감. -->
	<%
			}
	%>
</body>
</html>