<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      
<link href="css/event.css" rel="stylesheet" >
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	#header{
		/* background-color:lightgrey; */
		/* height :100px;*/
	}
	#nav{
		/* background-color:#339999; */
		color:white;
		width:120px;
		height:300px;
		float:left;
	}
	#section{
	 /*  background-color: blue;   */
		width:1300px;
		text-align:left;
		float:left; 
		margin: auto;
		/* padding:10px; */
	}
	#footer{
	/* 	background-color:#FFCC00; */
		height:100px;
		clear:both;
	}
	#header, #nav, #footer {text-align:center;}
	#header, #footer{line-height:100px;}
	#nav{line-height:240px;}
	
</style>
</head>
<body>
<jsp:include page="header.jsp" />

<!-- 	<div id="header">
		
	</div>
		<div id="nav">
		
	</div> -->
	
	
		<p style="padding:5px;"></p>
		
		<div id="section">
		
		<h3 class="title">이벤트</h3>
		
	<!-- 	pageContext.setAttribute("eventdetail", eventdetail); -->
		
		<c:forEach var="info" items="${eventdetail}">
		
			<c:set var="title" value="${info.subject}"/>
			<c:set var="recom_num" value="${info.recom_num}"/>
			<c:set var="indate" value="${info.indate}"/>
		
		</c:forEach>
		
		<table id='event_tile' style="margin-right:150px;">
			<tr>
				<th>${title}</th>
			</tr>
		</table>
		
		<table id='event_sub'>
			<tr>
				<td>관리자</td>
				<td>${indate}</td>
				<td>조회수 :</td>
				<td>${recom_num}</td>
			</tr>
		</table>		
		
		<p style="padding:15px;"></p>
		
		<table  style="margin-left:150px;">
		
			<c:forEach var="images" items="${eventdetail}">
		
				<tr>
					<td>
						<c:choose>
							<c:when test="${images.linkyn == 'y'}">
								<a href='eventitemlist?event_cd=${images.event_cd}&page=1'><img src="images/event/${images.image}" /></a>
							</c:when>
							<c:when test="${images.linkyn != 'y'}">
								<img src="images/event/${images.image}" />
							</c:when>							
						</c:choose>
					
					</td>
				</tr>
				
			</c:forEach>
			
		</table>			
		
		<p style="padding:10px;"></p>
		
		<div style="margin-left : 1100px">
		<input type="button" onclick="location.href='event?eventyn=a&page=1'" value="목록" />
		</div>
	
	</div>
		<div id="footer">
		
	</div>
</body>
</html>