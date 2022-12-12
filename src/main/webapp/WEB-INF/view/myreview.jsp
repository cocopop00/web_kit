<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<html xmlns:th="http://www.thymeleaf.org">
<link href="css/index.css" rel="stylesheet" >    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 리뷰</title>
<style type="text/css">
	#header{
		/*  background-color:lightgrey;  */
		/*  height:100px;  */
	}
	#nav{
		/*  background-color:#339999;  */
		color:white;
		width:250px;
		height:300px;
		float:left;
	}
	#section{
	   /*  background-color: blue;    */
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

	#list  img{
	width: 100px; 
	height : 100px; 
	margin-right: 0px;
	}
	
	.my-underline-offset-5 {
	  text-decoration : underline;
	  text-underline-offset : 10px;
	}

	#subimage img{
		width: 50px; 
		height : 50px; 
		margin-right: 0px;
	}
	#subimagetable{
		margin-left: 115px;
	}

	#qnabu{
		width: 130px; 
		height : 40px; 
		margin-left: 800px;
	}
	
	#button img{
			width: 120px; 
		height : 45px; 
		margin-right: 0px;
	}
	
	#button1 img{
			width: 170px; 
		height : 45px; 
		margin-right: 0px;
	}
	
	th, td {
    border: 1px solid #444444;
    
  }
  
	#rewiew_bu{
	background-color: #121319;
	border-radius: 5px;
	color: white;
	cursor: pointer;
	font-size:7px; 
	padding:10px 10px
	
	}
</style>

<script type="text/javascript">


</script>
</head>
<body>
<jsp:include page="header.jsp" />	
		<!-- <div id="header"> -->
		
<!-- 	<div id="header">
		
	</div>
		<div id="nav">
		
	</div> -->
	
	
		<p style="padding:5px;"></p>
		
		<div id="section">
		
		<div style='width:800px; margin-left:auto; margin-right :auto; text-align : center;'>   
		     <h1 >리뷰</h1>  
		</div>
		
		<p style="padding:20px;"></p>
	<!-- 	<p style="padding:10px;"></p> -->
		

		
		<form action="reviewdetail" method="GET" name="review_cd" >
		
		
		
		<c:forEach var="review" items="${reviewlist}">
		
		<table style='width:500px; margin-left:auto; margin-right :auto; text-align : center;'>
			<tr>
				<td style="cursor:pointer; border-left:none; border-right:none;" onclick="location.href='reviewdetail?review=${review.review_cd}'" >	
					<div style='width:400px;  margin-left:5px; text-align : left;'>
						<div style="font-size :1em; font-family: Georgia; font-weight: 500; ">제목 : ${review.subject}</div>
					</div>
					<div style='width:200px;  margin-left:5px; text-align : left;'>
						<div style="font-size :0.6em; font-family: Georgia ;">구매자 : ${review.name}</div>
					</div>
					<div style='width:400px;  margin-right:7px; text-align : right;'>
						<br>
						 <div style="font-size :0.7em; font-family: 굴림체;">추천수 : ${review.recom_num}</div>
					</div>
				
				</td>
			 	<td style="border-right:none; border-left:none;">
					<div id="list" onclick="location.href='reviewdetail?review=${review.review_cd}'" >
						 <img  id="image" style='cursor:pointer;'  align="left" src="images/review/${review.image}" />
						<c:if test="${(review.image_count) == 1}"><div id="imtext"></div> </c:if>
	         			<c:if test="${(review.image_count) > 1}"><div id="imtext">+${review.image_count - 1}</div></c:if>
					</div>
				</td>
			</tr>
			
		</table>
		
		</c:forEach>
		
		
<%-- 		<p style="padding:10px;"></p>
			
		<div style='width:700px; margin-left:auto; margin-right :auto; text-align : center;'>
		<c:forEach var='index' begin='1' end='${page}'>
		
				<a href='reviewlist?page=${index}' >[${index}]</a>
		
		</c:forEach>
		</div> --%>
		
		
		<br>
 	 	<br>
 	 	<br>
 	 	
 	 	<div style='width:700px; margin-left:auto; margin-right :auto; text-align : center;'>
 	 		<input type="button" id="rewiew_bu" class="cancel" value="닫기" onclick="location.href='./Mypage'" />
 	 	</div>
 	 	
		<p style="padding:20px;"></p>
		
		</form>
		
		
	</div>
		<div id="footer">
	</div>

</body>
</html>