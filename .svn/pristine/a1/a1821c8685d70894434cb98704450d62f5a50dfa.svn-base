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
 <meta charset="UTF-8">
 	<script type="text/javascript">
 	</script>
	<style type="text/css">
		section{
		  margin-left : 150px; 
		 margin-right : 120px;
		}
		.button_t{
		 margin-left : 600px; 
		}
		.table_t{
		margin-left : 100px; 
		}
		h2{
		 margin-left : 100px; 
		}
	</style>
 </head>
 <body>
 
 
 
 
 
 
 <section>
 
 	
 	<h2>나의 주문목록</h2>
 	<form action="orderdetail" class="table_t" method="GET" name="formm">
 	
 	
 	 <table id="cartList" style= "width:90%; margin: auto; text-align: center;">
 	  
 	 	<tr><th>주문일자</th><th>주문번호</th><th>상품명</th><th>결제 금액</th><th>주문 상세</th></tr>
 	 	
 	  	<c:forEach items="${orderlist}" var="orders">
                     <tr>
                      <td><fmt:formatDate value="${orders.indate }" type="date" /></td>
                      <td>${orders.ord_cd }</td>
                      <td>${orders.item_name }</td>
                      <td><fmt:formatNumber value="${orders.saleprice }" type="currency" /></td>
 	 	<td><input type="button" value="상세정보" onclick="location.href='orderdetail?ordcd=${orders.ord_cd}'"/></td>
	</tr>
 		 </c:forEach>  
 		
 	 </table>	
 	 

 	 </form>
 	 
 	 <form class="button_t" method="post" name="for">
 	 
 	 	<input type="button" class="cancel" value="닫기" onclick="location.href='/webapp/ShopController?command=index'" />
 	 	<p style="padding:20px;"></p>
 	 </form>
 	 
 	
 </section>
 
 </body>
 
 
