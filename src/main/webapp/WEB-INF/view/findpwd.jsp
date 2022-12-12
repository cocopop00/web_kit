<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호찾기</title>
<script type="text/javascript">
function pwdsearch() { 
	 	var frm = document.pwdfs;

	 	if (frm.email.value.length < 1) {
		  alert("이메일을 입력해주세요");
		  return;
		 }

		 if (frm.phone.value.length != 13) {
			  alert("핸드폰번호를 정확하게 입력해주세요");
			  return;
		 }

	 frm.method = "POST";
	 frm.action = "findpwdre"; //넘어간화면
	 frm.submit();  
	 }
</script>
<style>
form { 

        margin: 0 auto; 
        width: 200px;
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
</head>
<body>
<form name="pwdfs" method = "POST">
			<div class = "search-title" style="margin: auto; width: 80px;">
				<h3>본인확인</h3>
			</div>
		<section class = "form-search">
			<div class = "find-name" style="margin: auto; width: 160px;">
				<label>이메일</label>
				<input type="text" name="email" class = "btn-name" placeholder = "등록한 이메일">
			<br>
			</div>
			<p>
			<div class = "find-phone" style="margin: auto; width: 160px;">
				<label>휴대폰번호</label>
				<input type="text" name="phone" class = "btn-phone" placeholder = "휴대폰번호를 '-'포함하여 입력">
			</div>
			<br>
	</section>
	<div class ="btnSearch" style="margin: auto; width: 100px;">
		<input type="button" name="enter" value="찾기"  id="pwd_bu" onClick="pwdsearch()">
		<input type="button" name="cancle" value="닫기" id="pwd_bu" onClick="self.close()">
 	</div>
 </form>
</body>
</html>