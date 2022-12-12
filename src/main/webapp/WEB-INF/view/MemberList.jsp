<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>    
<%@page import="dto.Member" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
</head>
<body>
	<div style="color: #000;">
	<h1>회원목록</h1>
	<p><a href="add" method="post">신규 회원</a></p>
	
	<c:forEach var="members" items="${members}">
	<a href='update?email=${members.email}'>${members.email}</a>
		${members.pwd},
		${members.name}
		${members.indate}
	<a href='delete?email=${members.email}'>[삭제]</a><br>
	</c:forEach>
	
	
	
	</div>
	

</body>
</html>