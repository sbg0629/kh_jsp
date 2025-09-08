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
	
	String userid = request.getParameter("id");
	String userpw = request.getParameter("passwd");
	
	if(userid.equals("admin") && userpw.equals("admin1234")){
		//쿠키를 생성하고 userid값을 UserId에 저장
		Cookie cookie_id = new Cookie("UserId",userid);
		//유효기간 설정.
		cookie_id.setMaxAge(60*60);
		//경로설정
		cookie_id.setPath("/");
		//생성 된 쿠리를 추가한다.
		response.addCookie(cookie_id);
		
		response.sendRedirect("welcome.jsp");
	}else{
		out.print("아이디 비번 확인.");
	}
	
		%>
		
	
</body>
</html>