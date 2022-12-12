<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function emailsearch() { 
	 	var frm = document.emailfs;

	 	if (frm.name.value.length < 1) {
		  alert("이름을 입력해주세요");
		  return;
		 }

		 if (frm.phone.value.length != 13) {
			  alert("핸드폰번호를 정확하게 입력해주세요");
			  return;
		 }

	 frm.method = "POST";
	 frm.action = "findemailre"; //넘어간화면
	 frm.submit();  
	 }
</script>

<style>
form { 

        margin: 0 auto; 
        width: 200px;
        }
        
        
        
</style>
</head>
<body>
<form name="emailfs" method = "POST">
			<div class = "search-title" style="margin: auto; width: 80px;">
				<h3>본인확인</h3>
			</div>
		<section class = "form-search">
			<div class = "find-name" style="margin: auto; width: 160px;">
				<label style="margin: auto; width: 50px;" >이름</label>
				<input type="text" name="name" class = "btn-name" placeholder = "등록한 이름">
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
		<input type="button" name="enter" value="찾기"  onClick="emailsearch()">
		<input type="button" name="cancle" value="닫기" onClick="self.close()">
 	</div>
 </form>
</body>
</html>