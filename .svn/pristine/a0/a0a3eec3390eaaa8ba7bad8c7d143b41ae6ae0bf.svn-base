<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>   
<%@page import="dto.Member" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

	function emailck(){
		
		window.opener.document.getElementById('emailcheckbox').value = 1;
		window.close();
	}

</script>

</head>
<body>

 <% Member members = (Member)request.getAttribute("members"); %> 

	<% if(members != null){ 
	
			if(members.getEmail().equals("null")){
		%>
			<%= "공백 입니다. 아이디를 입력해주세요" %>
		<% }else{ %>	
		${members.getEmail()}<b>는 사용할 수 없는 아이디 입니다.</b>
		<br>
		<input type="button" value="닫기" onclick="self.close()" />
		<%  }%>

	<% } else { %>	
	<%= request.getParameter("email") + "는 사용 가능한 아이디 입니다." %>
	<br>
	<input type="button" value="닫기" onclick="emailck()" />
	<% } 
	
	%>
	
</body>
</html>