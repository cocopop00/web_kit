<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
<html xmlns:th="http://www.thymeleaf.org">
<link href="css/index.css" rel="stylesheet" >
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품상세정보</title>
<link href="css/iteminfo.css" rel="stylesheet" >
<style type="text/css">
	#header{
		/* background-color:lightgrey; */
		/* height:100px; */
	}
	#nav{
		/* background-color:#339999; */
		color:white;
		width:120px;
		height:300px;
		float:left;
	}
	#section{
	/*   background-color: blue;   */
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

	#itemdetail  img{
	width: 450px; 
	height : 450px; 
	margin-right: 0px;
	}
	
	.my-underline-offset-5 {
	  text-decoration : underline;
	  text-underline-offset : 10px;
	}

	#subimage img{
		width: 100px; 
		height : 100px; 
		margin-right: 0px;
	}
	#subimagetable{
		margin-left: 115px;
	}

	#qnabu{
		width: 130px; 
		height : 40px; 
		margin-left: 1160px;
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

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	function gocartform() {
		if (document.goCartForm.quantity.value == "") {
			alert("수량을 입력하여 주세요.");
			document.goCartForm.quantity.focus();
		} else {
			
			var pop_title = "parentForm";
			window.open("", pop_title, "width=400,height=300");
			var goCartForm = document.goCartForm;
			goCartForm.target = pop_title;
			goCartForm.action = "insert";
			goCartForm.submit();
			
			/* document.goCartForm.action="gocart";
			document.goCartForm.submit(); */
			//goCartForm.action = "insert";
			//goCartForm.submit();
			
		}
	}
	
	function change_image(checkid){
		
		var bigPic = document.querySelector("#big");
		var tmp = document.getElementById(checkid).src;
		
		bigPic.setAttribute("src",tmp);
		
		// hidden에 변경된 이미지 값 저장.
		document.getElementById('imagenum').value = checkid;
		
	}
	
	
function goqna(){
		
		var pop_title = "parentForm";
		window.open("", pop_title, "width=580,height=550");
		var goCartForm = document.formm;
		goCartForm.target = pop_title;
		goCartForm.method = "get"
		goCartForm.action = "itemqnainsert";
		goCartForm.submit();
		
	}


function gopwcheck(checkid){
	
	var prodnumber = checkid;
	
	var pop_title = "tForm";
	window.open("", pop_title, "width=590,height=600");
	
	var goCartForm = document.formm;
	goCartForm.target = pop_title;
	goCartForm.prodqcd.value = checkid;
	//goCartForm.method = "get"
	goCartForm.action = "qanpwckform";
	goCartForm.submit();
	
}

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


function go_quantity(){
	
	var textbox = document.getElementById('quantity').value;
	var itempay = document.getElementById('topay').value;
	
	var q_RegExp = /^[0-9]{1,3}$/i;
	
	if(textbox == ""){
		textbox = 0;
	}
	else{
		if(q_RegExp.test(textbox)){
			if(textbox == 0){
				alert("1개 이상은 작성해주세요");
				textbox = 1;
				document.getElementById('quantity').value = 1;
			}
			else if(textbox >= 20){
				alert("20개 이상은 구매 불가 합니다.");
				textbox = 1;
				document.getElementById('quantity').value = 1;
			}		
		}
		else{
			alert("숫자를 입력해주세요");
			textbox = 1;
			document.getElementById('quantity').value = 1;
		}		
	}
	

 	document.getElementById('totalpay').value = textbox * itempay;
	
}


window.onload = function (){
	
	var textbox = document.getElementById('quantity').value;
	var itempay = document.getElementById('topay').value;

	document.getElementById('totalpay').value = textbox * itempay;
	
}



function wishlistform(){
	var goCartForm=document.goCartForm;
	goCartForm.action = "wishinsert";
	goCartForm.submit();
}


function oneorderform(){
	
	var textbox = document.getElementById('quantity').value;
	var itempay = document.getElementById('topay').value;
	
	if(textbox == ""){
		alert("수량을 입력해주세요!");
		textbox = 1;
		document.getElementById('quantity').value = 1;
		document.getElementById('totalpay').value = textbox * itempay;
	}
	else{
		var goCartForm=document.goCartForm;
		goCartForm.method = "post"
		goCartForm.action = "order2";
		goCartForm.submit();		
	}
	
	
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


			<!--  구매정보 받아 오는 부분. -->
			<c:forEach var="item" items="${iteminfo}">
				<c:set var="item_name" value="${item.item_name}"/>
				<c:set var="pay" value="${item.saleprice}"/>
				<c:set var="content" value="${item.content}"/>
				<c:set var="prod_cd" value="${item.prod_cd}"/>
				
				
				<c:if test="${item.image_num == image_num}">
				<c:set var="image_main" value="${item.image}"/>
				</c:if>
				
				
			</c:forEach>
			
			<form action="insert" method="get" name="goCartForm">
			
					<c:set var="totalpay" value="0"/>
					<input type="hidden" id="totalcash" name="totalcash" value="0"/>
					<input type="hidden" id='topay' name="topay" value="${pay}"/>
			
					<div id="itemdetail" style="margin-left :120px; margin-bottom:-15px">
						<img id="big" align="left" src="images/product/${image_main}" />
						<table style="margin-left : 570px">
							<tr>
								<td>
									<h3 class="my-underline-offset-5">${item_name}</h3>
									<p style="padding:5px;"></p>
								</td>
							</tr>
							
							<tr>
								<td>
									<p>가격 :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<fmt:formatNumber value="${pay}" />원</p>
									<p style="padding:5px;"></p>
								</td>
							</tr>
							
							<tr>
								<td>
									<p>수량 :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="text" style="width: 50px" id="quantity" name="quantity" value="1"  oninput="go_quantity()" /></p>
									
									<p style="padding:5px;"></p>
								</td>
							</tr>
						
							<tr>
								<td>
									<p>제품 정보
									:&nbsp;&nbsp;${content}</p>
									<p style="padding:5px;"></p>
								</td>
							</tr>
							
							<tr>
								<td>
									<p>총 합계금액 :&nbsp;&nbsp;<input type="text" size=5 id="totalpay" id="totalpay" style="border: none; background: transparent; cursor:default" readonly onfocus="this.blur()"/>원</p> 
									
									<p style="padding:5px;"></p>
								</td>
							</tr>
							
							<tr>
								<td style="martgin-center">							
							<div id="buttons">
								<!-- <form style="padding:20px">  -->
								<b onclick="gocartform();" id="button"><img  style='cursor:pointer' src="images/iteminfo/cart.jpg" /></b>
								<b onclick="wishlistform();" id="button" ><img style='cursor:pointer' src="images/iteminfo/wish.jpg" /></b>
								<b onclick="oneorderform();" id="button1"><img  style='cursor:pointer' src="images/iteminfo/pay.jpg" /></b>
							<!-- 	<input type="button" class="submit" value="장바구니" onclick="gocartform()"/> 
					 			<input type="button" class="submit" value="찜하기" onclick="" /> 
								<input type="button" class="submit" value="구매하기" onclick="gocartform()"/> -->
								
							</div>
								</td>
							</tr>							
						</table>
						</div>
						
						<p style="padding:65px;"></p>
						
						

						
						<div id="subimage">
							<table id="subimagetable">
								<tr>
									<c:forEach var="sub" items="${iteminfo}" begin="0" end="2">
									<td>
										<%-- <c:if test="${image_num != sub.image_num}"> --%>
											<!--  <a href='#'>  -->
												<img  id="${sub.image_num}" style='cursor:pointer'  align="left" src="images/product/${sub.image}" onMouseOver="change_image(this.id)"/>
											<!--  </a> -->
										<%-- </c:if>		 --%>		
									</td>
									</c:forEach>
								</tr>
							</table>
						</div>
									
					<p>
						<input type="hidden" name="pseq" value="${prod_cd}" />
						<input type="hidden" name="cartcd" value="1" />
					</p>
					
			</form>


			<p style="padding:80px;"></p>
				<!--  상세페에지 -->
				
				<hr>
				
			<!--  상세페이지 -->
				<p style="padding:10px;"></p>
				<div >
				<h1 style="margin-left : 580px">상세정보</h1>
				</div>
				<p style="padding:10px;"></p>	
				
				
				<div>
					<c:forEach var="item" items="${iteminfo}" begin="3" end="5">
					
					<table style="margin-left : 150px">
					
						<tr>
							<td>
								<img align="left" src="images/product/${item.image}" />
							</td>
						</tr>
					
					</table>
					
					</c:forEach>
				</div>

	<p style="padding:60px;"></p>
			
			<!-- Q&A -->
		<form class="table_t" method="get" name="formm">	
		
		<c:choose>
			<c:when test="${empty sessionScope.authInfo}">
				<div>
				<h3 style="margin-bottom : -20px;">상품 Q&A</h3>	
				</div>
			</c:when>
			<c:when test="${!empty sessionScope.authInfo}">
				<div>
				<h3 style="margin-bottom : -40px;">상품 Q&A</h3>	
				<p onclick="goqna();" style="margin-bottom : -40px;"><img id="qnabu" align="left" style='cursor:pointer' src="images/iteminfo/iteminfo_qnabutton.jpg" /></p>
				</div>
			</c:when>			
		</c:choose>
		
			<input type="hidden" name="prod_cd" value="${prod_cd}" />
			<input type="hidden" id="imagenum" name="image" value="2"/> 
			<input type="hidden" name="page" value="1"/> 
		
		<p style="padding:35px;"></p>
		
	 	 	<table id="qna_title" >
	 	 		<tr width="100%" ><th width="10%">번호</th><th width="45%">제목</th><th width="25%">등록일</th><th width="10%">이름</th><th width="10%">답변 여부</th></tr>
	 	 	
	 			 <c:forEach var="qna" items="${qnalist}" varStatus="status">
	 		
	 			<tr width="100%" >
	 			<td width="10%"><p style = "margin-left: 60px;" >${(5*inpage-5)+status.count}</p></td>
	 			<td width="45%"><p style="width:600px; cursor: pointer; margin-left:auto; margin-right :auto; text-align : center;">
	 				<!-- 비밀글, 회원 글 보는 부분 찾는 구간. -->
	 				<c:choose>
	 					<c:when test="${empty sessionScope.authInfo && (qna.secret) == 'y'}">
	 						<a id="${qna.prodq_cd}" onclick="gopwcheck(this.id);">${qna.subject}[비밀글]</a>
	 					</c:when>
	 					<c:when test="${empty sessionScope.authInfo && (qna.secret) == 'n'}">
	 						<a id="${qna.prodq_cd}" onclick="goqnaview(this.id);">${qna.subject}</a>
	 					</c:when>
	 					<c:when test="${!empty sessionScope.authInfo && sessionScope.authInfo.email.equals(qna.email)}">
	 						<a id="${qna.prodq_cd}" onclick="goqnaview(this.id);">${qna.subject}</a>
	 					</c:when>
	 					<c:when test="${!empty sessionScope.authInfo && !sessionScope.authInfo.email.equals(qna.email) && (qna.secret) == 'y'}">
	 						<a id="${qna.prodq_cd}" onclick="gopwcheck(this.id);">${qna.subject}[비밀글]</a>
	 					</c:when>		
	 					<c:when test="${!empty sessionScope.authInfo && !sessionScope.authInfo.email.equals(qna.email) && (qna.secret) == 'n'}">
	 						<a id="${qna.prodq_cd}" onclick="goqnaview(this.id);">${qna.subject}</a>
	 					</c:when>				 					
	 				</c:choose>
	 			
	 			</p></td>
	 			<td width="25%" ><p style = "margin-left: 120px;"><fmt:formatDate value="${qna.indate}" pattern="yyyy-MM-dd" /></p></td>
	 			<td width="10%" ><p style = "margin-left: 45px;">${qna.name}</p></td>
	 			<td width="10%" ><p style = "margin-left: 15px;">
	 			<c:if test="${(qna.rep) == 1}">처리 진행 중</c:if>
 	  			<c:if test="${(qna.rep)  == 2}">처리 완료</c:if>
	 			</p>
	 			</td>
	 			</tr>
	 			
	 			 </c:forEach> 
	 	 	</table>	
	 	 		
	 	 		<input type="hidden" name="prodqcd" /> 
	 	 	
	 	 	</form>
	 	 	
	 	 	
	 	 	
	 	 	<p style="padding:10px;"></p>
			
			<div style='margin-left : 630px'>
			
			<c:forEach var='index' begin='1' end='${page}'>
			
					<a href='item?prod_cd=${prod_cd}&image=2&page=${index}'>[${index}]</a>
			
			</c:forEach>
			
	 	 	</div>
	 	 	
 	 	</form>

	</div>
		<div id="footer">
	</div>

</body>
</html>