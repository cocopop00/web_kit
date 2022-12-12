<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<html>
<head>
<meta charset="UTF-8">
<link href="css/styles.css" rel="stylesheet">
<title>회원정보 수정</title>

<script type="text/javascript">
function zipcheck(){
	   window.open('zipcode?zipcode=', 'pop', "width=800,height=400");
	   
}


function gocheck(){
	   
	var buf = false;
	var num = 0;

	buf = pwck();	
	if(!buf) num += 1;
	
	// 0이면 문제 없다.
	if(num == 0) return buf = true;
	else return buf = false;
   
}



function pwck(){
	
	 var pw1 = document.getElementById("mb_pwd1");
	 var pw2 = document.getElementById("mb_pwd2");

	 var RegExp = /^(?=.*[a-zA-Z])((?=.*\d)(?=.*\W)).{4,16}$/
	
	 // 암호가 둘이 같아야한다.
	 if(pw1.value == pw2.value){
		 if (pw1.value == null || pw1.value == "" && pw2.value == null || pw2.value == ""){
			   alert("비밀번호를 입력해주세요.");
			   return false	
		 }
		 else{
			 if(!RegExp.test(pw1.value)){
				 alert("비밀번호 4~16자의 영문 대소문자와 숫자,특수문자 입력하여 주세요.");
				 return false	
			 }
			 else return true
		 }
		 
	 }
	 else{
		 alert("비밀번호와 비밀번호확인이 서로 다릅니다."); 
		 return false	
	 }
	 
} 


	</script>

<style>
form {
	text-align: center;
		margin-left: auto;
	margin-right: auto;
}

table {
	margin-left: auto;
	margin-right: auto;
}

div {
	text-align: center;
}
</style>

<%@ include file="header.jsp"%>
</head>
<body>
	<div class="container py-4">

		<header class="join-header">
			
		</header>

		<form action="update" method="post" id="join-form" onsubmit="return gocheck()">
			<c:if test="${authInfo!=null}">
			<div class="join-header__logo">
				<h1 class="join-header__title">회원정보 수정</h1>
			</div>
				<div class="form-group" style="display: none;">
					<label for="mb_id" class="form-label mt-4">이메일</label> <input
						type="text" class="form-control" name="email" id="email"
						value="${authInfo.email}">
					<div>
						<font id="id_feedback" size="2"></font>
					</div>
				</div>


				<table>

					<tr>
						<td><label for="mb_name" class="form-label mt-4">이름</label></td>
						<td><input type="text" class="form-control" name="name"
							value="${authInfo.name}"></td>
					</tr>

					<tr>
						<td><label class="form-label mt-4" for="inputValid">비밀번호</label>
						<td><input type="password" class="form-control" id="mb_pwd1"
							name="pwd"></td>
					</tr>

					<tr>
						<td><label class="form-label mt-4" for="inputInvalid">비밀번호 재확인 &nbsp&nbsp</label>
						<td><input type="password" class="form-control" id="mb_pwd2" name="pwd2"></td>
					</tr>

					<tr>
						<td><label for="Inputphone" class="form-label mt-4">휴대폰번호</label>
						<td><input type="text" class="form-control" name="phone"
							value="${authInfo.phone}"></td>
					</tr>

					<tr>
						<td><label for="Inputzipnum" class="form-label mt-5">우편번호</label>
						<td><input type="text" class="form-control" name="zipnum" id="zipnum"
							value="${authInfo.zip_num}"></td>
							 <td><input type=button value="우편번호 검색"  onclick="zipcheck()" /></td></tr>
					

					<tr>
						<td><label for="address" class="form-label mt-6">상세주소</label>
						<td><input type="text" class="form-control" name="address" id="address"
							value="${authInfo.address}"></td>
					</tr>


					<tr>
						<td>&nbsp</td>
						<td><input type="submit" value="정보수정" />
					</tr>

				</table>
			</c:if>
		</form>

	</div>


	<c:if test="${authInfo==null}">
		<div>
			<h1 class="text-dark text-center">
				회원 정보 수정 <br>페이지입니다.
			</h1>
			<p class="text-center">
				<span>로그인 후 사용하실 수 있습니다.</span>
			</p>
		</div>
		<div class="d-grid gap-2">
			<button type="button" class="btn btn-primary btn-lg"
				onclick="location.href='login'">로그인 하기</button>
		</div>
	</c:if>

</body>
</html>