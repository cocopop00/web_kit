<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="WishList" class="dto.WishList" scope="session" />
<jsp:useBean id="CartList" class="dto.CartList" scope="session" />
<html lang="en">
<head>
<jsp:include page="header.jsp" />
<link href="css/wishlist.css" rel="stylesheet" >
<title>찜리스트 </title>
</head>
<body>

  <script type="text/javascript">
		function wish_delete(pseq){
			window.location.href="wishUpdate?pseq="+pseq;
			
		}
	</script> 
<script type="text/javascript">
	function wish_update(pseq){
		var pop_title="parentForm";
		window.open("insert?pseq="+pseq+"&quantity="+1, pop_title, "width=400,height=300");
	}
</script>
	
	<header class="wishlist-header">
		<div class="wishlist-header__wish">
			<h1 class="wishlist-header__title">찜한 상품</h1>
	</div>
	</header>


<div class="wishlist-box">


<form action="wishUpdate" method="get" name="wishlist_form"> 

<c:forEach var="WishList" items="${wishlist}" >

		 <div class="wishlist-product">
			<div class="wishlist-product__info">
				<div class="wishlist-product__column">
				 <a href="item?prod_cd=${WishList.prodcd}">
					<img src="images/product/${WishList.image}" />
					 </a> 
				</div>
				<div class="wishlist-product__column">
					<span class="wishlist-product__column__name">${WishList.itemname}</span>
					<input type="hidden" name="quantity" value="1" />
					<input type="hidden"  name="pseq" value="${WishList.prodcd}" />
				</div>
			</div>
				<div class="wishlist-product__form" >
				<input type="button"  value="삭제" onclick="wish_delete(${WishList.prodcd})"/> 
			    <input type="button"  value="카트담기" onclick="wish_update(${WishList.prodcd})"/> 
			   </div>	
		</div>
		</c:forEach>
		
		</form> 
		
 </div>

</body>
</html>