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
		<h3>[세션 값을 얻어오는 예제]</h3>
	</center>
	<hr>
	
	<%
// 		getID():세션 고유의 id를 가져옴
		String str_id = session.getId();
	//getLastAccessedTime(); : 클라이언트로 마지막 으로 요청 보낸 시가능 long 형으로 변환 (밀리세컨드)
		long last_time = session.getLastAccessedTime();
	//getCreationTime():세션 만들어지는 시간 (밀리세컨드)
		long create_time = session.getCreationTime();
	//웹 사이트 머문 시간
// 		last_time-create_time 		

	//웹 사이트 머문 시간(분)
		long time_used = (last_time-create_time)/60000;
		//getMaxInactiveInterval(): 사용자가 다음 요청을 보낼 따 까지 세션을 유지하는 최대 시간(초 단위)로 되돌려준다.
		//기본(30분)=>초단위
		int inactive = session.getMaxInactiveInterval() / 60;//분으로 계산
		
		boolean b_new = session.isNew();
	%>
	[1] 세션 ID는 [<%= str_id %>] 입니다.<br><hr>
	[2] 웹 사이트에 머문 시간은 [<%= time_used %>]분 입니다.<br><hr>
	[3] 세션 유효 시간은 [<%= inactive %>]분 입니다.<br><hr>
	[4] 세션이 새로 만들어졌나요?<br>
	<%
		if(b_new){
			out.print("예!! 새로운 세션을 만들었습니다");
		}else{
			out.print("아니요!! 새로운 세션을 만들지 않았습니다");
		}
	%>
</body>
</html>