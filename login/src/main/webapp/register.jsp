<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"   src="script.js"></script>

</head>
<body>




<table border="1" align="center">
<form name ="reg_frm" method="post" action ="registerOk.jsp">
    <tr height = "50" >
      <td align="center"  colspan='2'><h2>회원 가입 신청</h2><br>
      
        '*' 표시 항목은 입력 필수 항목 입니다.
      </td>    
  
    </tr>
    <tr height = 30>
    
    
      <td >User ID</td>
      <td><input type="text" name = "mem_uid" size="20">* </td>      
      
    </tr>
    <tr height = 30>
      <td>암호</td>
      <td ><input type="password" name = "mem_pwd" size="20">*</td>
    </tr>
    
       <tr height = 30>
      <td >암호확인</td>
      <td ><input type="password" name = "pwd_check" size = "20">*</td>
  
    </tr>
    <tr height = 30>
      <td >이름</td>
      <td ><input type="text" name = "mem_name" size = "20">*</td>
  
    </tr>
    <tr  height = 30>
      <td >E-mail</td>
      <td ><input type="text" name = "mem_email" size="30">*</td>
  
    </tr >
    <tr height = 30>
      <td >주소</td>
      <td ><input type="text" name = "mem_addr" size="40"></td>
  
    </tr >
      <td  colspan='2' align="center">
        <input type ="button" value="등록" onclick="check_ok() ">
        <input type ="reset" value="다시입력" onclick="check_ok()">
        <input type ="button" value="가입안함" onclick="location='login.jsp'">
      </td>
  </table>
  </form>



</body>
</html>