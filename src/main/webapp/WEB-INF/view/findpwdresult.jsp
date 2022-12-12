<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="dao.MemberDao"%>
<!DOCTYPE html>
<html>
<head>
<title>비밀번호찾기</title>
<style>
form { 

        margin: 0 auto; 
        width: 250px;
        }
        
          #pwd_bu{
	background-color: #121319;
	border-radius: 5px;
	color: white;
	cursor: pointer;
	font-size:8px; 
	padding:10px 10px
}            
        
 </style>
<meta charset="UTF-8">
<title>Insert title here</title>


<script type="text/javascript">

 function joinin(){
	 
	var url = "./joinForm" 
		
	window.opener.location.href = url;
	window.close();
 }

</script>



</head>
<body>

	<form name="pwdsearch" method="post">
		<c:if test="${(mpwd.pwd) != null}">
			<div class="container">
				<div class="found-success">
					<h4>회원님의 임시비밀번호는</h4>
					<div class="found-pwd">${newpw}</div>
					<h4>입니다.</h4>
					<h4> 회원정보에서 수정 부탁드립니다.</h4>
				</div>

				<div class="found-login">
					<input type="button" id="pwd_bu" value="닫기" onClick="self.close()" />
				</div>
			</div>
		</c:if>
		<c:if test="${(mpwd.pwd) == null}">
			<div class="container">
				<div class="found-fail">
					<h4>등록된 정보가 없습니다</h4>
				</div>
				<div class="found-login">
					<input type="button" id="pwd_bu" value="다시 찾기"
						onClick="history.back()" /> <input type="button" id="pwd_bu"
						value="회원가입" onClick="joinin()" />
				</div>
			</div>

		</c:if>
	</form>
</body>
</html>