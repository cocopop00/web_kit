<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="CartList" class="dto.CartList" scope="session" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="en">
<head>

 <jsp:include page="header.jsp" />
<link href="css/cartlist.css" rel="stylesheet" >
<title>장바구니</title>


</head>
<body>
<!-- 체크박스 전체선택 기능------------------------ -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
	      $(document).ready(function() {
				$("#cbx_pseqAll").click(function() {
					if($("#cbx_pseqAll").is(":checked")) $("input[name=pseq]").prop("checked", true);
					else $("input[name=pseq]").prop("checked", false);
				});
				$("input[name=pseq]").click(function() {
					var total = $("input[name=pseq]").length;
					var checked = $("input[name=pseq]:checked").length;
					
					if(total != checked) $("#cbx_pseqAll").prop("checked", false);
					else $("#cbx_pseqAll").prop("checked", true); 
				});
			}); 
</script>
 
<script  type="text/javascript">
function count(type,pseq)  {
  // 결과를 표시할 element
  const resultElement = document.getElementById(pseq);
  // 현재 화면에 표시된 값
  let number = resultElement.innerText;
  // 더하기/빼기
  if(type === 'plus') {
    number = parseInt(number) + 1;
  }else if(type === 'minus')  {
	  if(number==1){
		  const target = document.getElementById('minus_button');
		  target.disabled = true;
	  }else{
		  number = parseInt(number) - 1;
	  }
  }
  	update(number,pseq);
  	
  function update(number,pseq){
	  window.location.href="cartUpdate?pseq="+pseq+"&quantity="+number;
  }
}	



/* 총 주문 정보 세팅(배송비, 총 가격, 마일리지, 물품 수, 종류) */
function setTotalInfo(){
	
	let totalPrice = 0;				// 총 가격
	let totalCount = 0;				// 총 갯수
	let totalKind = 0;				// 총 종류
	let deliveryPrice = 3000;			// 배송비
	let finalTotalPrice = 0; 		// 최종 가격(총 가격 + 배송비)
	
	$(".cart_info_td").each(function(index, element){
		
		// 총 가격
		totalPrice += parseInt($(element).find(".individual_totalPrice_input").val());
		// 총 갯수
		totalCount += parseInt($(element).find(".individual_bookCount_input").val());
		// 총 종류
		totalKind += 1;
		// 총 마일리지
		totalPoint += parseInt($(element).find(".individual_totalPoint_input").val());			
		

	});
	
	/* 배송비 결정 */
	if(totalPrice >= 30000){
		deliveryPrice = 0;
	} else if(totalPrice == 0){
		deliveryPrice = 0;
	} else {
		deliveryPrice = 3000;	
	}
	
		finalTotalPrice = totalPrice + deliveryPrice;
	
	/* ※ 세자리 컴마 Javscript Number 객체의 toLocaleString() */
	
	// 총 가격
	$(".totalPrice_span").text(totalPrice.toLocaleString());
	// 총 갯수
	$(".totalCount_span").text(totalCount);
	// 총 종류
	$(".totalKind_span").text(totalKind);
	// 배송비
	$(".delivery_price").text(deliveryPrice);	
	// 최종 가격(총 가격 + 배송비)
	$(".finalTotalPrice_span").text(finalTotalPrice.toLocaleString());		
}


 function price(price){
	var checker = document.getElementsByName("pseq");
	console.log(checker)
	var sum = 0;
	var length = checker.length;
	for(var i = 0 ; i<length;i++){
		if(checker[i].checked){
			sum+=parseInt(checker[i].id);
		}
	}
	var priceData = document.getElementById("calculatedPrice");
	console.log(sum);
	priceData.innerText = sum.toString();

	}	  

 function delete1(pseq){
	 window.location.href="cartDelete1?pseq="+pseq;
 }



</script>

<!-- 장바구니 헤더------------------------------ -->
		<div class="cart-header__cart">
			<h1 class="cart-header__title">장바구니</h1>
		</div>
	
	
	<div class="cartlistbox">
		<div class="cartlistbox-list">
	 <form method="get"> 
	<!-- 카트리스트 ----------------------------->
		<div class="cartlistbox-list__product">
		<c:forEach var="CartList" items="${cartlist}">
				<div class="cartlistbox-list__product__column">
					<div class="cartlistbox-list__product__column__checkbox__img">
						<input type="checkbox" id="${CartList.saleprice*CartList.quantity}" name="pseq" data-toggle="checkbox"
						 value="${CartList.prodcd}" onclick='price("${CartList.saleprice*CartList.quantity}")'>   
						<input type="hidden" class="individual_bookPrice_input">
						<img src="images/product/${CartList.image}" />
					</div>
					<div class="cartlistbox-list__product__column__name">
						<span class="cartlist-product__name">${CartList.itemname}</span>
					</div>
					<div class="css-1gueo66 e1cqr3m40">
						<input id="minus_button" type="button" aria-label="수량내리기" 
						class="css-8azp8 e1hx75jb0" onclick='count("minus","${CartList.prodcd}")'></input>
							<div class="count css-6m57y0 e1cqr3m41" id="${CartList.prodcd}" >${CartList.quantity}</div>
						<input id="plus_button" type="button" aria-label="수량올리기" 
						class="css-18y6jr4 e1hx75jb0" onclick='count("plus",${CartList.prodcd})'></input>
					</div>
					<div class="cartlistbox-list__product__column__price">
					<span>
					<fmt:formatNumber value="${CartList.saleprice*CartList.quantity}" pattern="###,###,###"/>원
					</span>
				</div>
				<div class="cartlistbox-list__product__column__button">
				<button class="delete_button" type="button" data-testid="delete" value="${CartList.prodcd}" onclick='delete1(${CartList.prodcd})'>
				<span class="delete_button1"></span></button>
				</div>
				</div>
			</c:forEach>
			</div>		
				<div class="cartlistbox-payment__price__amount">
				<div class="cartlistbox-payment__price__amount1">
				<span>상품금액:</span>
				 <span id="calculatedPrice">0</span>원
				<%-- <fmt:formatNumber id="calculatedPrice" value="${total}" pattern="###,###,###"/>원 --%>
				</div>
				<div class="cartlistbox-payment__price__amount2">
			<input type="submit" value="삭제하기" formaction="cartDelete" />
			<input type="submit" value="주문하기" formaction="order" />
			</div>
			</div>
 </form> 
 </div>
 
<!-- 카트가격 ----------------------------->	
<%-- 		<c:forEach var="CartList" items="${cartlist}">
		<c:set var="shipping_fee" value="3000"/>
		<c:set var="total" id="calculatedPrice" value="0"/>
</c:forEach>  --%>
		</div>
<%-- <div class="cartlistbox-payment">
		<form action="order" method="get">
		<c:set var="ttotal" scope="request" value="${0}"/>
         <input type="hidden"  id="totalpay" name="totalpay" value="${ttotal}"/>
		
			
				<div id="text1">
              <fmt:formatNumber value="${ttotal}" pattern="###,###,###"/>원</div>
				<div class="cartlistbox-payment__price__deliveryfee">
					<span>배송비</span> 
					<fmt:formatNumber value="${shipping_fee}" pattern="###,###,###"/>원
				</div>
				<div class="cartlistbox-payment__price__total">
					<span>결제예정금액</span>
					<fmt:formatNumber value="${ttotal+shipping_fee}" pattern="###,###,###"/>원
				</div>
				</div>
				<div class="cartlistbox-payment__form">
				<c:forEach var="CartList" items="${cartlist}">
				<input type="hidden" name="quantity" value="${CartList.quantity}" /> 
				</c:forEach>
				
				
				</div>
			
		</form>
		
</div>	
</div> --%>

	<!-- 아이콘  ----------->
	<script src="https://kit.fontawesome.com/4a9dbb7224.js"
		crossorigin="anonymous">
    </script>

</body>
</html>