<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ page import="dto.CartList" %>
 <%@ page import="java.util.*" %>
 <jsp:useBean id="OrderList" class="dto.OrderList" scope="session" />
<%-- <%@ include file="sub_order.html"%> --%>
 <head>
 <title>구매목록</title>
 <%@ include file="header.jsp"%>
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
	section{
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

	#order_bu{
	background-color: #121319;
	border-radius: 10px;
	color: white;
	cursor: pointer;
	font-size:9px; 
	padding:12px 12px   
	   
   </style>
 </head>
 <body>
 
 <p style="padding:10px;"></p>
 
 <section>
 
 
 	<div style='width:800px; margin-left:auto; margin-right :auto; text-align : center;'>
 		 <h2>주문 상세 정보</h2>
 	</div>
 
 
    <p style="padding:15px;"></p>
    
    <h3>주문자 정보</h3>
    
   	<div style='width:1000px; margin-left:auto; margin-right :auto; text-align : center;' >
   	
	     <table id="cartList"  style= "width:800px; margin: auto; text-align: center;">
	        <tr>
	        <th style="background-color:#DFDCDC;">주문일자</th>
	        <th style="background-color:#DFDCDC;">주문번호</th>
	        <th style="background-color:#DFDCDC;">주문자</th>
	        <th style="background-color:#DFDCDC;">주문 총액</th>
	        </tr>
	    
	       <c:forEach var="order" items="${orderlist}">
	          <c:set var="indate" value="${order.indate}" />
	          <c:set var="number" value="${order.ord_cd}" />
	          <c:set var="email" value="${order.email}" />
	          <c:set var="cash" value="${order.quantity*order.saleprice}" />
	          <c:set var="totalcash" value="${cash+totalcash}" />
	       </c:forEach>
	    
	    <tr>
	    <td><fmt:formatDate value="${indate}" pattern="yyyy-MM-dd" /></td>
	    <td>${number}</td>
	    <td>${email}</td>
	    <td><fmt:formatNumber value="${totalcash+3000}" type="currency" /></td>
	    </tr>
	     </table>     	
   	
   	</div>
 
     
     <h3>주문 상품 정보</h3>
     
     <div style='width:1000px; margin-left:auto; margin-right :auto; text-align : center;' >
    
	      <table id="cartList" style= "width:800px; margin: auto; text-align: center;">
	      <tr>
	      <th style="background-color:#DFDCDC;">상품명</th>
	      <th style="background-color:#DFDCDC;">상품별주문번호</th>
	      <th style="background-color:#DFDCDC;">수량</th>
	      <th style="background-color:#DFDCDC;">가격</th>
	      <th style="background-color:#DFDCDC;">처리 상태</th>
	      </tr>

	      <c:forEach var="order" items="${orderlist}">  
	      <tr>
	      <td><a style="text-decoration : none; color : black;" href="item?prod_cd=${order.prod_cd}&image=2&page=1">${order.item_name}</a></td>
	      <td>${order.prod_cd}</td>
	      <td>${order.quantity}</td>
	      <td><fmt:formatNumber value="${order.saleprice*order.quantity}" type="currency" /></td>
	      <td>
	      <c:if test="${(order.result) == 1}">진행중</c:if>
	         <c:if test="${(order.result) == 2}">처리완료</c:if>
	      </td>
	      </tr>
	
	       </c:forEach> 
	       
	      <tr>
	      <td><p>배송비</p></td>
	      <td></td>
	      <td></td>
	      <td><fmt:formatNumber value="${3000}" type="currency" /></td>
	      <td>입금완료</td>
	      </tr>	       
	       
	       
	       
	       
	     </table>

	 </div >
    <!--  </form> -->
     
     
     
     
     
     
     
      <p style="padding:30px;"></p>
     
     <div  style='width:1000px; margin-left:auto; margin-right :auto; text-align : center;'>
	     <form class="button_t" method="post" name="for">
	     
	        <input type="button" id="order_bu" value="닫기" onclick="location.href='./MyOrderList?page=${page}'" />
	        <p style="padding:20px;"></p>
	     </form>
     </div>
    
 </section>
 
 </body>
 
 
