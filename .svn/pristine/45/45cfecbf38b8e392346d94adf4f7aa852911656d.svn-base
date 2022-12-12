<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="dto.CartList"%>
<%@ page import="java.util.*"%>
<jsp:useBean id="OrderList" class="dto.OrderList" scope="session" />
<head>
<meta charset="UTF-8">
<script type="text/javascript">
	
</script>
<style type="text/css">

section {
	margin-left: 150px;
	margin-right: 120px;
}

.button_t {
	margin-left: 600px;
}

.table_t {
	margin-left: 100px;
}

h2 {
	margin-left: 100px;
}
</style>
</head>
<%@ include file="header.jsp"%>
<body>


	<section>

		<h2>주문 정보</h2>

		<form class="table_t" method="post" name="formm">
			<table id="cartList">
				<tr>
					<th>상품명</th>
					<th>수 량</th>
					<th>가 격</th>
					<th>주문일</th>
					<th>진행 상태</th>
				</tr>


				<c:forEach var="order" items="${orderlist}">

					<tr>
						<td><a href='#'>${order.item_name}</a></td>
						<td>${order.quantity}</td>
						<td>￦${order.saleprice * order.quantity}</td>
						<td><fmt:formatDate value="${order.indate}"
								pattern="yyyy-MM-dd" /></td>
						<td><p>처리 진행 중</p></td>
					</tr>

					<c:set var="total"
						value="${total + order.quantity * order.saleprice}" />

				</c:forEach>

			</table>

			<table id="cartList">
				<tr>
					<th>총 액</th>
					<th>￦${total}</th>
					<th><b>주문 처리가 완료되었습니다.</b></th>
				</tr>
			</table>

		</form>

		<form class="button_t" method="post" name="for">

			<input type="button" class="cancel" value="쇼핑 계속하기"
				onclick="index" />
			<p style="padding: 20px;"></p>
		</form>


	</section>

</body>