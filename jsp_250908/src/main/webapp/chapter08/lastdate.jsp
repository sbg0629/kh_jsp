<%@page import="java.util.Date"%>
<%-- <%@page import="java.sql.Date"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie lastDate = null;
	String msg = "";//화면 출력 메시지
	boolean found = false; //처음 방문 여부.
	//┌─ 현재 시간 정보를 위한 값
	String newValue = ""+System.currentTimeMillis(); //문자열이랑 더하면 문자열이 됌.
	Cookie [] cookies = request.getCookies();
	
	if(cookies != null){
		
		for(int i=0;i<cookies.length;i++){
			lastDate = cookies [i];
			//반복하면서 쿠키 이름이 lastDateCookie가 있으면 처음 방문이 아님.
			if(lastDate.getName().equals("lastDateCookie"))
			{	
				found =true;
				break;
			}	
		}
		
		if(!found){//처음 방문/아닐 때(lastdate 쿠키 객체에 값이 있음.)
			msg = "처음 방문입니다...";
		//처음 방문 했을 때 lastDateCookie 쿠키이름으로 시간정보를 저장
			lastDate = new Cookie("lastDateCookie",newValue);
			lastDate.setMaxAge(365*24*60*60);
			lastDate.setPath("/");
			response.addCookie(lastDate);
			
		}else{ //처음 방문이 아님 (lastdate 쿠키 객체에 값이 있음))
//	 		String conv = lastDate.getValue();
//	 		lastDate 쿠키에 있는 시간 정보 값을 long변수로 가져옴
			long conv = Long.parseLong(lastDate.getValue());
			//date 객체로 의미 있는 시간 정보를 출력.
			msg = "당신의 마지막 방문: "+new Date(conv);
//			다음 방문을 위한 값 설정.
			lastDate.setValue(newValue);
			response.addCookie(lastDate);
		}
	}

	
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2><%= msg %></h2>
</body>
</html>