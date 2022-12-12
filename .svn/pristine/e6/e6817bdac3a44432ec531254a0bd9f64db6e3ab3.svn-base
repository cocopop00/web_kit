<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>         
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰</title>
<link href="css/event.css" rel="stylesheet" >
<style type="text/css">
	#header{
		/* background-color:lightgrey; */
		height:100px;
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
		margin:auto;
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
	
	
	#subimage img{
		width: 100px; 
		height : 100px; 
		margin-right: 0px;
	}
	
</style>		

<script type="text/javascript">
	
	function goimage(image){
		
		window.open('image?imagename='+image, 'pop', "width=600,height=600");
		
	}
	
</script>

</head>
<body>
<jsp:include page="header.jsp" />
<!-- 	<div id="header">
		
	</div>
		<div id="nav">
		
	</div> -->
	
	
		<p style="padding:5px;"></p>
		<div id="section">

		<div style="margin-left:570px">
		<h3 class="title">리뷰</h3>
		</div>
	<!-- 	pageContext.setAttribute("eventdetail", eventdetail); -->
		
		<c:forEach var="info" items="${reviewdetail}">
		
			<c:set var="name" value="${info.name}"/>
			<c:set var="title" value="${info.subject}"/>
			<c:set var="content" value="${info.content}"/>
			<c:set var="recom_num" value="${info.recom_num}"/>
			<c:set var="indate" value="${info.indate}"/>
			<c:set var="reviewcd" value="${info.review_cd}"/>
		
		</c:forEach>
		
		<table id='event_tile' style="margin-right:150px;">
			<tr>
				<th>${title}</th>
			</tr>
		</table>
		
		<table id='event_sub'>
			<tr>
				<td>작성자 : ${name}</td>
				<td>등록일 : ${indate}</td>
				<td>추천수 : ${recom_num}</td>
				<td><a href='recomck?reviewcd=${reviewcd}&recom=${recom_num}'>추천하기</a></td>
			</tr>
		</table>		
		
		<p style="padding:15px;"></p>		
		
		<textarea style="font-size: 1.4em; border: none; background: transparent; cursor:default; resize: none; width: 600px; height : 400px;"  readonly onfocus="this.blur()">${content}</textarea>
		
		<p style="padding:10px;"></p>

		<div id="subimage">
			<table id="subimagetable">
				<tr>
					<c:forEach var="sub" items="${reviewdetail}" begin="0" end="${imagesize}">
					 <td>
						 <img  id="${sub.image}" style='cursor:pointer' align="left" src="images/review/${sub.image}" onclick="goimage(this.id)" />	 
					</td>
					</c:forEach>
				</tr>
			</table>
		</div>	
		
		<p style="padding:30px;"></p>
		
		<table id='event_tile' style="margin-right:150px;">
			<tr>
				<th></th>
			</tr>
		</table>
		
		<p style="padding:10px;"></p>
		
		<div style="margin-left : 1150px">
		<input type="button" onclick="location.href='reviewlist?&page=1'" value="목록" />
		</div>
		
	</div>
		<div id="footer">
		
	</div>

</body>
</html>