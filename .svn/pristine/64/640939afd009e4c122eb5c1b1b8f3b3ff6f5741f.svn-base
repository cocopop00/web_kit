<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ page import="dto.CartList" %>
 <%@ page import="java.util.*" %>
 <jsp:useBean id="OrderList" class="dto.OrderList" scope="session" />
<%-- <%@ include file="sub_order.html"%> --%>
 <head>
 <%@ include file="header.jsp"%>
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
      h3{
       margin-left : 100px; 
      }
      table{
       margin-left : 100px;   
      }
      
   </style>
 </head>
 <body>
 <section>
 
     <h2>My Page(주문 상세 정보)</h2>
    
    <h3>주문자 정보</h3>
     <table id="cartList" >
        <tr><th>주문일자</th><th>주문번호</th><th>주문자</th><th>주문 총액</th></tr>
    
       <c:forEach var="order" items="${orderlist}">
          <c:set var="indate" value="${order.indate}" />
          <c:set var="number" value="${order.ord_cd}" />
          <c:set var="email" value="${order.email}" />
          <c:set var="cash" value="${cash + order.saleprice}" />
       </c:forEach>
    
    <tr><td><fmt:formatDate value="${indate}" pattern="yyyy-MM-dd" /></td><td>${number}</td>
    <td>${email}</td><td>${cash}</td></tr>
    
    
     </table>   
     
     <h3>주문 상품 정보</h3>
      <table id="cartList" >
      <tr><th>상품명</th><th>상품별주문번호</th><th>수량</th><th>가격</th><th>처리 상태</th></tr>

      <c:forEach var="order" items="${orderlist}">  

      <tr><td>${order.item_name}</td><td>${order.prod_cd}</td><td>${order.quantity}</td>
      <td>￦${order.saleprice}</td>
      <td>
      <c:if test="${(order.result) == 1}">진행중</c:if>
         <c:if test="${(order.result) == 2}">처리완료</c:if>
         </td></tr>

       </c:forEach> 
     </table>

    <!--  </form> -->
     
     <form class="button_t" method="post" name="for">
     
        <input type="button" class="cancel" value="닫기" onclick="location.href='/webapp/ShopController?command=order_mypage'" />
        <p style="padding:20px;"></p>
     </form>
     
    
 </section>
 
 </body>
 
 
