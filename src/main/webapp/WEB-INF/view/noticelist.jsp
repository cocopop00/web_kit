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

</head>
<body>
	<jsp:include page="header.jsp"/>

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

	<section class="infosection" >

		<div style='width:800px; margin-left:auto; margin-right :auto; text-align : center;'> 
		<h3> 공 지 사 항</h3>
		</div>
			<c:if test="${!empty noticelist}">
			<table id="noticeList">
				<tr>
					<th>번호</th><th>제 목</th><th>작성자</th><th>작성일</th><th>조회수</th>
				</tr>
				<c:forEach var="notice" items="${noticelist}">
					<tr>
						<td>${notice.noticd}</td>
						<td><a style="text-decoration : none; color : black;" href='noticedetail?noticd=${notice.noticd}'>${notice.subject}</a></td>
						<td>${notice.name}</td>
						<td><fmt:formatDate value="${notice.indate}" pattern="yyyy-MM-dd" /></td>
						<td>${notice.views}</td>
					</tr>
						
				</c:forEach>
				
			</table>
			</c:if>
			<c:if test="${empty noticelist}">
			<text>"아직 공지사항이 없습니다. 감사합니다"</text>
			</c:if>
	</section>
	</div>
	
</body>
</html>