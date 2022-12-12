<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>      
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
	width: 200px; 
	height : 200px; 
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
		
		<div style="margin-left :570px">   
		     <h1 >나의 리뷰</h1>  
		</div>
		
		<p style="padding:20px;"></p>
	<!-- 	<p style="padding:10px;"></p> -->
		

		
		<p style="padding:10px;"></p>
		
		<form action="reviewdetail" method="GET" name="review_cd" >
		
		<c:forEach var="review" items="${reviewlist}">
		
		<table style="width: 950px; margin:auto;">
			<tr>
				<td style="width: 950px; cursor:pointer" onclick="location.href='reviewdetail?review=${review.review_cd}'">
					<div id="list">
						<img  id="image" style='cursor:pointer'  align="left" src="images/review/${review.image}" />
					</div>
					<div style="margin-left : 200px;">
						제목 : ${review.subject}
					</div>
					<div style="margin-left : 200px;">
						구매자 : ${review.name}
					</div>
					<div style="margin-left : 800px;">
						추천수 : <a>${review.recom_num}</a>
					</div>
				</td>
			</tr>
			
			<tr>
			
			</tr>
		</table>
		
		</c:forEach>
		
		</form>
		
		
	</div>
		<div id="footer">
	</div>

</body>
</html>