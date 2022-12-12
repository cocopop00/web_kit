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
<link href="css/iteminfo.css" rel="stylesheet" >
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
  
	 section{
	 	margin-left : 600px;
		margin-right : 120px;
	}


	#itemqna_bu{
	background-color: #121319;
	border-radius: 5px;
	color: white;
	cursor: pointer;
	font-size:7px; 
	padding:10px 10px
	
	}

</style>



<script type="text/javascript">

function goqnaview(checkid){
	
	var pop_title = "tForm";
	window.open("", pop_title, "width=590,height=600");
	
	var goCartForm = document.formm;
	goCartForm.target = pop_title;
	goCartForm.prodqcd.value = checkid;
	
	goCartForm.method = "get"
	goCartForm.action = "qnaview";
	goCartForm.submit();
	
}


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
		     <h1 >나의 상품 문의</h1>  
		</div>
		
		<p style="padding:20px;"></p>
	<!-- 	<p style="padding:10px;"></p> -->
		
		<form class="table_t" method="get" name="formm">	
		
		<p style="padding:10px;"></p>
		
		<table id="qna_title" style='width:800px; margin-left:auto; margin-right :auto; text-align : center;'>
	 	 		<tr width="100%" >
	 	 		<th width="10%" style="background-color:#DFDCDC;">번호</th>
	 	 		<th width="40%" style="background-color:#DFDCDC;">제목</th>
	 	 		<th width="20%" style="background-color:#DFDCDC;">등록일</th>
	 	 		<th width="10%" style="background-color:#DFDCDC;">이름</th>
	 	 		<th width="20%" style="background-color:#DFDCDC;">답변 여부</th>
	 	 		</tr>
	 	 	
	 			 <c:forEach var="qna" items="${qnalist}" varStatus="status">
	 		
	 			<tr width="100%" >
	 			<td width="10%"><p>${status.count}</p></td>
	 			<td width="40%"><p style="cursor: pointer;">
	 				<!-- 비밀글, 회원 글 보는 부분 찾는 구간. -->
					<a id="${qna.prodq_cd}" onclick="goqnaview(this.id);">${qna.subject}</a>
	 			</p></td>
	 			<td width="20%"><p><fmt:formatDate value="${qna.indate}" pattern="yyyy-MM-dd" /></p></td>
	 			<td width="10%"><p>${qna.name}</p></td>
	 			<td width="20%"><p>
	 			<c:if test="${(qna.rep) == 1}">처리 진행 중</c:if>
 	  			<c:if test="${(qna.rep)  == 2}">처리 완료</c:if>
	 			</p>
	 			
	 			</td>
	 			</tr>
	 			 </c:forEach> 
	 	 	</table>	
				<input type="hidden" name="prodqcd" /> 
				<input type="hidden" id="imagenum" name="image" value="2"/> 
		
		
			<br>
	 	 	<br>
	 	 	<br>
	 	 	
	 	 	<div style='width:700px; margin-left:auto; margin-right :auto; text-align : center;'>
	 	 	<input type="button" id="itemqna_bu" class="cancel" value="닫기" onclick="location.href='./Mypage'" />
			<p style="padding:20px;"></p>
			</div>
		
		</form>
		
		
	</div>
		<div id="footer">
	</div>

</body>
</html>