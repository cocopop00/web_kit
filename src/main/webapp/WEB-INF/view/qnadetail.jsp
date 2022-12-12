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
<script src="https://kit.fontawesome.com/c0af9b6ae6.js"
	crossorigin="anonymous"></script>


<style type="text/css">
#qna_bu{
	background-color: #121319;
	border-radius: 5px;
	color: white;
	cursor: pointer;
	font-size:11px; 
	padding:15px 15px
}

</style>

</head>
<body>
	<jsp:include page="header.jsp" />

	<hr>
	<div id="header">
		<h2>고 객 센 터</h2>
	</div>
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
			<div class="qnaframebox">
				<form>
					
						<div class="qna-choose">
							<div>
								<div class="qna-choose-a">
									<label for="qna-choose-1">유 형</label>
									<div class="star"><i class="fa-solid fa-star"></i></div>
								</div>
							</div>
							
							
								<table class="qnadt-cate">
									<tr>
										<td>${qnadetail.category}</td>
									</tr>
									
								</table>
								<div>
									<div class="qnadt-date">
										<label for="qna-choose-1">작성일</label>
									</div>
								</div>
								<table class="qnadt-cate">
									<tr>
										<td>${qnadetail.indate}</td>
									</tr>
									
								</table>
							
						</div>
						<div class="qna-choose">
							<div>
								<div class="qna-choose-a">
									<label for="txt1">제 목</label>
									<div class="star"><i class="fa-solid fa-star"></i></div>
								</div>
								
							</div>
							<table class="qnadt-sbj">
								<tr>
									<td>${qnadetail.subject}</td>
								</tr>
							</table>
						</div>
						<div class="qna-textarea">
							<div>
								<div class="qna-choose-a">
									<label for="textarea">내 용</label>
									<div class="star"><i class="fa-solid fa-star"></i></div>
								</div>
							</div>
							<table class="qnadt-cont">
								<tr>
									<td>${qnadetail.content}</td>
								</tr>
							</table>
						</div>
	
						<c:if test="${!empty qnadetail.reply}">
							<div class="qna-textarea">
								<div>
									<div class="qna-choose-a">
										<label for="textarea">답 변</label>
										<div class="star"><i class="fa-solid fa-star"></i></div>
									</div>
								</div>
								<table class="qnadt-cont">
									<tr>
										<td>${qnadetail.reply}</td>
									</tr>
								</table>
							</div>
						</c:if>
						
						
						<c:forEach var="qna" items="${qnaimages}">
							<div class="qnadt-image">
								<c:if test="${qna != ''}">
									<img src="images/qna/${qna}" />
								</c:if>
							</div>
						</c:forEach>
						
					
						<div class="qnasubmit" >
							<input type="button"  id="qna_bu" value="목록으로" onclick="location.href='./qnalist'"/>
							<!-- <a href="qnaupdate"><input type="submit" id="qna_bu" value="수정하기"></a> -->
							<input type="button" id="qna_bu" value="삭제하기" onclick="location.href='./qnadelete?qnacd=${qnadetail.qnacd}'">
						</div>
					
						
					
				</form>
			</div>
			
	</section>
	</div>
</body>
</html>