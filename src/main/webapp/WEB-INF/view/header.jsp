<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link href="css/header.css" rel="stylesheet" >
<head>

<script type="text/javascript">
	function go_search(){
		var goForm = document.search;
		goForm.action = "search";
		goForm.method = "GET";
		goForm.submit();
	}
</script>
</head>

<script src="https://kit.fontawesome.com/c0af9b6ae6.js"
	crossorigin="anonymous"></script>


<div class="header-top">
<div class="header-box">

		<div class="header_login" >
			<ul class="navbar_login">

			<c:choose>
				<c:when test="${empty sessionScope.authInfo}">
					<li><a href="login" class="login-a">로그인</a></li>
					<div>|</div>
					<li><a href="joinForm" class="login-aj">회원가입</a></li>
					<div>|</div>
					<li><a href="noticelist" class="login-a">고객센터</a></li>				
				</c:when>
				<c:when test="${!empty sessionScope.authInfo}">
					<li><a href="#" class="login-a">${authInfo.name}님</a></li>
					<div>|</div>
					<li><a href="logout" class="login-aj">로그아웃</a></li>
					<div>|</div>
					<li><a href="noticelist" class="login-a">고객센터</a></li>
					<div>|</div>
					<li><a href="Mypage" class="login-a">마이페이지</a></li>		
					<div>|</div>
					<li><a href="update" class="login-a">회원정보수정</a></li>	
				</c:when>	
			</c:choose>

			</ul>
		</div>
		
		
		      
		<div class="header_margin">
		<nav class="navbar">

			<div class="navbar_logo">
				<i class="fa-brands fa-accusoft"></i>
				<a href="index" class="logo_a">KIT</a>
				<li>|</li>
				<a href="index" class="camping">캠핑 밀키트</a>
				<li class="new">N</li>
			</div>

			<div class="wrapper">
				<form action="search" method="GET" name="search">
					<div class="search-input">
						<input type="text" id="txt1" name ="searchrsult" maxlength="10"	placeholder="검색어를 입력해주세요"/>
						
						<div class="search-icon"><i class="fa-solid fa-magnifying-glass" onclick="go_search()"></i></div>
						<input type="hidden" name="page" value="${1}"/>
					</div>
				</form>
			</div>

			<ul class="navbar_HC">
				<li><a href="wishlist"><i class="fa-solid fa-heart fa-lg"></i></a></li>
				<li><a href="cartlist"><i class="fa-solid fa-cart-shopping fa-lg"></i></a></li>
				<li><a href="event"><i class="fa-solid fa-basket-shopping fa-lg"></i></a></li>
				<li class="event">Event</li>
			</ul>

		</nav>
			
			

	
	 <div class="header_margin2">
			<ul class="middle_menu">
				<li>
				<div class="left-menu">
			<a href="index" class="middle_toogleBtn"> <i class="fa-solid fa-bars"></i><span>카테고리</span></a>
				<div class="dropdown-menu">
				<div class="dropdown-menu-list">
				<a href="itemlist?kind=1&page=1" ><i class="fas fa-seedling"></i><span>한식</span></a>
				</div>
				<div class="dropdown-menu-list">
				<a href="itemlist?kind=2&page=1" ><i class="fas fa-hamburger"></i><span>양식</span></a>
				</div>
				<div class="dropdown-menu-list">
				<a href="itemlist?kind=3&page=1" ><i class="fas fa-utensils"></i><span>중식</span></a>
				</div>
				<div class="dropdown-menu-list">
				<a href="itemlist?kind=4&page=1" ><i class="fas fa-fish"></i><span>일식</span></a>
				</div>
				<div class="dropdown-menu-list">
				<a href="itemlist?kind=5&page=1" ><i class="fas fa-lemon"></i><span>동남아</span></a>
				</div>
				<div class="dropdown-menu-list">
				<a href="itemlist?kind=6&page=1" ><i class="fas fa-carrot"></i><span>샐러드</span></a>
				</div>
			</div> 
				</div>
				</li>
				<li><a href="itemnblist?best=y&news=n&page=1" class="middle_a">베스트</a></li>
				<li><a href="itemnblist?best=n&news=y&page=1" class="middle_a">신상품</a></li>
				<li><a href="reviewlist?page=1" class="middle_a">리뷰</a></li>
			</ul>
		</div>
		<div class="borderline2"></div>
	</div>
	</div> 
 </div> 


