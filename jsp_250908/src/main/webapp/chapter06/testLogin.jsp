<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String s_id ="hong";
	String s_pw ="1234";
	String s_name ="홍길동";
	
// 	login에서 아이디 비번 
	if(s_id.equals(request.getParameter("id"))
			&&s_pw.equals(request.getParameter("pw"))){
// 		response.sendRedirect("main.jsp");
	// main.jsp?name : mian.jsp로 name의 값을 넘긴다
// 			한글 처리 인 코딩 오류
// 		response.sendRedirect("main.jsp?name ="+s_name);
	//URLEncoder.encode: 변수에 있는 한글 값을 인코딩
	//"main.jsp?name=" 스페이스 먹어서 변수 까지 침 스페이스 뺴야함 
		response.sendRedirect("main.jsp?name="+URLEncoder.encode(s_name,"UTF-8"));
		
	}else{
		response.sendRedirect("login.html");
		
	}	

	
	
	
%>