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
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">



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


// 다음주소
function zipcheck(){
	   //window.open('zipcode?zipcode=', 'pop', "width=800,height=400");
	   
	   
	   new daum.Postcode({
		   oncomplete:function(data){
			   // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			   var addr = ''; // 주소 변수
			   var extraAddr = ''; // 참고항복 변수
			   
			   // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
			   if(data.userSelectedType === 'R'){ // 사용자가 도로명 주소를 선택했을 경우
				   addr = data.roadAddress;
			   } else{ // 사용자가 지번 주소를 선택했을 경우
				   addr = data.jibunAddress;
			   }
			   
			   // 사용자가 선택한 주소가 도로명 타입일 때 참고 항목을 조합니다.
			   if(data.userSelectdType === 'R'){
				   // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				   if(data.bname !== '' && data.apartment === 'Y'){
					   extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				   }
				   // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				   if(extraAddr !== ''){
					   extraAddr = '(' + extraAddr + ')';
				   }
			   }
			   
			   // 우편번호와 주소 정보를 해당 필드에 넣는다.
			   document.getElementById("zipnum").value = data.zonecode;
			   document.getElementById("address").value = addr;
			   
			   // 커서를 상세주소 필드로 이동한다.
			   document.getElementById("address").focus();
		   }
	   }).open();
	   
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

<!-- 		<header class="join-header">
			
		</header> -->
		
		<p style="padding:10px;"></p>

		<form action="update" method="post" id="join-form" onsubmit="return gocheck()">
			<c:if test="${member!=null}">
			<div class="join-header__logo">
				<h1 class="join-header__title">회원정보 수정</h1>
			</div>
				<div class="form-group" style="display: none;">
					<label for="mb_id" class="form-label mt-4">이메일</label> <input
						type="text" class="form-control" name="email" id="email"
						value="${member.email}">
					<div>
						<font id="id_feedback" size="2"></font>
					</div>
				</div>

				<p style="padding:10px;"></p>

				<table>

					<tr>
						<td><label for="mb_name" class="form-label mt-4">이름</label></td>
						<td><input type="text" class="form-control" name="name"
							value="${member.name}"></td>
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
							value="${member.phone}"></td>
					</tr>

					<tr>
						<td><label for="Inputzipnum" class="form-label mt-5">우편번호</label>
						<td><input type="text" class="form-control" name="zipnum" id="zipnum"
							value="${member.zip_num}"></td>
							 <td><input type=button value="우편번호 검색"  onclick="zipcheck()" /></td></tr>
						 

					<tr>
						<td><label for="address" class="form-label mt-6">상세주소</label>
						<td><input type="text" class="form-control" name="address" id="address"
							value="${member.address}"></td>
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