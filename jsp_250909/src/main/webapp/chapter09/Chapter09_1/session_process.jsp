<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String id =request.getParameter("id");
	String pw =request.getParameter("passwd");
	if(id.equals("admin")&&pw.equals("admin1234")){
// 		아이디 비번 인증되면 아이디값을 세서면 userid의 세션값으로 설정
		session.setAttribute("userID", id);
		response.sendRedirect("welcome.jsp");
	}else {
		out.print("실패");
	}
	%>
</body>
</html>