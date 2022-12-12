<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <html xmlns:th="http://www.thymeleaf.org">
<link href="css/index.css" rel="stylesheet" >
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
<link href="css/noticelist.css" rel="stylesheet">
<link href="css/qna.css" rel="stylesheet">
<script>
	function selectAll(selectAll) {
		const checkboxes = document.getElementsByName('qnacd');
		checkboxes.forEach((checkbox) => {
			checkbox.checked = selectAll.checked;
		})
		
		//console.log(checkbox.checked);
		
		
		//document.getElementById('ck').value = 1;
		
	}
	
	function nullCheck(){
		
		
		var ckdox = document.getElementsByName("qnacd");
		 
		for(var i = 0; i < ckdox.length; i++){
			 
			if(!ckdox[i].checked){
				 alert("체크박스를 체크해 주세요!!!"); 
				 return false;				
			}
		}
	
		 return true; 	
	}	
 
	
	
</script>

<style type="text/css">
#qna_bu{
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
	<jsp:include page="header.jsp" />

	<hr>
	<div id="header">
		<h2>고 객 센 터</h2>
	</div>
	
	<div class="sectiondiv">
	<div id="section">
		<div class="info">
			<a href="noticelist">공지사항</a>
		</div>
		<div class="info"><a href="qnalist" class="qna">1:1 문의</a></div>
	</div>

	<section class="infosection">

		<h3> 1:1 문의</h3>
		<c:if test="${empty qnalist}">
			<div class="qna-b-function">
				
				<div class="qna">
					<div class="qna_not" > 작성하신 1:1 문의가 없습니다."</div>
				</div>

			</div>
				<p style="padding:5px;"></p>
				<div class="qnareq" style='width:400px; margin-left:auto; margin-right :auto; text-align : center;'>
					<input type="button" id="qna_bu" value="문의하기" onclick="location.href='qnaaddform'">
				</div>
		</c:if>
			<br>	
		
			<c:if test="${!empty qnalist}">
				
			<form action="qnasdelete" method="Get" onsubmit="return nullCheck();" style="margin-left:200px">
			<table id="noticeList">
					
				<tr>
					<th><input type="checkbox" name="pseq" value="1" onclick='selectAll(this)'/>전체선택</th>
					
					<th>유 형</th><th>제 목</th><th>작성일</th><th>답변상태</th>
				</tr>
					<c:forEach var="qna" items="${qnalist}">
					<tr>
						<td><input type="checkbox" name="qnacd" id="qnacd" value="${qna.qnacd}"/></td>
						<td>${qna.category}</td>
						<td><a style="text-decoration : none; color : black;" href='qnadetail?qnacd=${qna.qnacd}'>${qna.subject}</a></td>
						<td><fmt:formatDate value="${qna.indate}" pattern="yyyy-MM-dd" /></td>
						<td>
						<c:if test="${(qna.rep) == 1}">처리 진행 중</c:if>
 	  					<c:if test="${(qna.rep)  == 2}">처리 완료</c:if></td>
					</tr>
				</c:forEach>
					
			</table>
					<div style="margin-left:700px">
					<input type="button" id="qna_bu" value="문의하기" onclick="location.href='qnaaddform'" />
					<input type="submit" value="삭제하기"  id="qna_bu"/>
				<!-- 	<input type="button" id="update" value="수정하기" onclick="location.href='./qnaupdate'" /> -->
					</div>
			</form>		
			</c:if>
			
			
	</section>
	</div>
</body>
</html>