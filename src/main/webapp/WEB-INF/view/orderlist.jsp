<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="dto.CartList"%>
<%@ page import="java.util.*"%>
<jsp:useBean id="OrderList" class="dto.OrderList" scope="session" />
<head>
<meta charset="UTF-8">
<title>상품주문</title>
<link href="css/gocart.css" rel="stylesheet" >
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



.table_t {
	margin-left: 100px;
}


#order_img img{
	width: 250px; 
	height : 250px; 
	margin-right: 0px;
}

#order_bu{
	background-color: #121319;
	border-radius: 5px;
	box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
	color: white;
	cursor: pointer;
	font-size:11px; 
	padding:15px 15px
}


</style>
</head>
<%@ include file="header.jsp"%>
<body>


	<section>
	
	<p style="padding:5px;"></p>
	
	<div style='width:800px; margin-left:auto; margin-right :auto; text-align : center;'>
		<h2>주문이 완료 되었습니다 감사합니다!</h2>
	</div>
	
	<div id="order_img" style='width:800px; margin-left:auto; margin-right :auto; text-align : center;'>
	<b><img src="images/order/paper_bag.png" /></b>
	</div>
	
	
	<p style="padding:40px;"></p>
	
	<div style='width:800px; margin-left:auto; margin-right :auto; text-align : center;'>
	<h3>주문은 다음과 같습니다</h3>
	
		<form class="table_t" method="post" name="formm">
			<table id="cartList">
				<tr width="100%">
					<th width="60%" style="background-color:lightgrey;">상품명</th>
					<th width="10%" style="background-color:lightgrey;">수 량</th>
					<th width="10%" style="background-color:lightgrey;">가 격</th>
					<th width="20%" style="background-color:lightgrey;">주문일</th>
				</tr>


				<c:forEach var="order" items="${orderlist}">

					<tr>
						<td width="60%"><a style="text-decoration : none; color : black;" href="item?prod_cd=${order.prod_cd}&image=2&page=1">${order.item_name}</a></td>
						<td width="10%"><p style="margin-left : 25px">${order.quantity}</p></td>
						<td width="10%"><p>￦${order.saleprice * order.quantity}</p></td>
						<td width="20%"><p style="margin-left : 20px"><fmt:formatDate value="${order.indate}"
								pattern="yyyy-MM-dd" /></p></td>
					</tr>

				<%-- 	<c:set var="total"
						value="${total + order.quantity * order.saleprice}" />
 --%>
				</c:forEach>

			</table>

	<%-- 		<table id="cartList">
				<tr>
					<th>총 액</th>
					<th>￦${total}</th>
					<th><b>주문 처리가 완료되었습니다.</b></th>
				</tr>
			</table> --%>

		</form>

	</div>
	
	<p style="padding:25px;"></p>
	
	<div style='width:800px; margin-left:auto; margin-right :auto; text-align : center;'>
	
		<input type="button" id="order_bu" name="cancle" value="계속쇼핑하기" onclick="location.href='./index'"/> 
		<input type="button" id="order_bu" name="cancle" value="구매목록가기" onclick="location.href='./MyOrderList?page=1'"/>
	
	</div>

	<p style="padding:15px;"></p>

	</section>

</body>