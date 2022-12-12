<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ page import="dto.CartList" %>
 <%@ page import="java.util.*" %>
 <jsp:useBean id="OrderList" class="dto.OrderList" scope="session" />
<%-- <%@ include file="sub_order.html"%> --%>
 <head>
 <title>구매목록</title>
 <meta charset="UTF-8">
 	<script type="text/javascript">
 	</script>
	<style type="text/css">
	#header{
		/*  background-color:lightgrey;  */
		/*  height:100px;  */
	}
	#nav{
		/*  background-color:#339999;  */
		color:white;
		width:120px;
		height:300px;
		float:left;
	}
	#section{
	   /*  background-color: blue;    */
		width:1000px;
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
	
	
	.button_t{
	 margin-left : 600px; 
	}
		
		
	#order_bu{
	background-color: #121319;
	border-radius: 10px;
	color: white;
	cursor: pointer;
	font-size:9px; 
	padding:12px 12px
}	
	</style>
 </head>
 <body>
 
 
 <p style="padding:10px;"></p>
 <section>

 	<div style='width:800px; margin-left:auto; margin-right :auto; text-align : center;'>
 		<h2>나의 주문목록</h2>
 	</div>
 
 
 
 
 
 <p style="padding:10px;"></p>	
 	
 	<form action="orderdetail" class="table_t" method="GET" name="formm">
 	
 	
 	
 	
 	 <table id="cartList" style= "width:1100px; margin: auto; text-align: center;">
 	  
 	 	<tr><th style="background-color:lightgrey;">주문일자</th>
 	 	<th style="background-color:lightgrey;">주문번호</th>
 	 	<th style="background-color:lightgrey;">상품명</th>
 	 	<th style="background-color:lightgrey;">결제 금액</th>
 	 	<th style="background-color:lightgrey;">주문 상세</th></tr>
 	 	
 	  	<c:forEach items="${orderlist}" var="orders">
                     <tr>
                      <td><fmt:formatDate value="${orders.indate }" type="date" /></td>
                      <td>${orders.ord_cd }</td>
                      <td>${orders.item_name }</td>
                      <td><fmt:formatNumber value="${orders.saleprice}" type="currency" /></td>
 	 	<td><input type="button" value="상세정보" id = "order_bu" onclick="location.href='orderdetail?ordcd=${orders.ord_cd}&page=${pagenumber}'"/></td>
	</tr>
 		 </c:forEach>  
 		
 	 </table>	
 	 </form>	 
 	 
 	 <p style="padding:15px;"></p>	
 	 
 	<div style='width:800px; margin-left:auto; margin-right :auto; text-align : center;'>
		<c:forEach var='index' begin='1' end='${page}'>
		
				<a href='MyOrderList?page=${index}' >[${index}]</a>
		
		</c:forEach>
	</div> 	 
	 
 	<p style="padding:10px;"></p>	
 	 

 </section>
 
 <script type="text/javascript">
 
	 window.onpageshow = function(event) {
		 
		 
	     if ( event.persisted || (window.performance && window.performance.navigation.type == 2)) {
		     // Back Forward Cache로 브라우저가 로딩될 경우 혹은 브라우저 뒤로가기 했을 경우
		     location.href="./Mypage";
	   	 }
	     
	}
 
 </script>
 
 
 </body>
 
 
