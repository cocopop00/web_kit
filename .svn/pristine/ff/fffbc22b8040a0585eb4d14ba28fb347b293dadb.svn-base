<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="dao.MemberDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
form { 

        margin: 0 auto; 
        width: 200px;
        }
        
        
        
</style>
</head>
<body>

	<form name="emailsearch" method="post">
		<c:if test="${(memail.email) != null}">



			<div class="container" >
				<div class="found-success">
					<h4>회원님의 아이디는</h4>
					<div class="found-id"> ${memail.email} </div>
					<h4>입니다</h4>
				</div>

				<div class="found-login">
					<input type="button" id="btnLogin" value="닫기" onClick="self.close()" />
				</div>
			</div>
		</c:if>
		<c:if test="${(memail.email) == null}">
			<div class="container">
				<div class="found-fail">
					<h4>등록된 정보가 없습니다</h4>
				</div>
				<div class="found-login">
					<input type="button" id="btnback" value="다시 찾기"
						onClick="history.back()" /> <input type="button" id="btnjoin"
						value="회원가입" onClick="joinin()" />
				</div>
			</div>

		</c:if>
	</form>
</body>
</html>