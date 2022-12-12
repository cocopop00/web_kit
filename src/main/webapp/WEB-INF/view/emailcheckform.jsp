<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>   
<%-- <%@page import="dto.Member" %>  --%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일체크</title>
<link href="css/gocart.css" rel="stylesheet" >
<script type="text/javascript">

	function emailck(){
		
		window.opener.document.getElementById('emailcheckbox').value = 1;
		window.close();
	}

</script>

<style type="text/css">
#emailck_bu{
	background-color: #121319;
	border-radius: 5px;
	color: white;
	cursor: pointer;
	font-size:8px; 
	padding:10px 10px
}
</style>

</head>
<body>

	<c:choose>
		<c:when test="${(members.email) != null}">
			
			<div class="search-title" >
				<i class="fas fa-shopping-cart fa-3x"></i>
			</div>
			<div class="search-title2">
				<h3 style="margin-left : 120px;">${members.email}는</h3>
				<h4 style="margin-left : 90px;">사용할 수 없는 이메일 입니다.</h4>
			</div>
			<div class="go_cart" style="margin-left : 150px; width: 100px;">
				<input type="button" name="cancle" value="닫기" onClick="self.close()"> 
			</div>
				
		</c:when>
		<c:when test="${(members.email) == null}">
		
			<div class="search-title" >
				<i class="fas fa-shopping-cart fa-3x"></i>
			</div>
			<div class="search-title2">
				<h3 style="margin-left : 120px;">${email}는</h3>
				<h4 style="margin-left : 90px;">사용할 수 있는 이메일 입니다.</h4>
			</div>
			<div class="go_cart"> <!-- style="margin: auto; width: 100px;" -->
				<input type="button" name="enter" id = "emailck_bu" value="사용하기" onclick="emailck()"> 
				<input type="button" name="cancle" id="emailck_bu" value="닫기" onClick="self.close()"> 
			</div>
		</c:when>	
	</c:choose>




<%--  <% Member members = (Member)request.getAttribute("members"); %> 

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
	
	%> --%>
	
</body>
</html>