<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns:th="http://www.thymeleaf.org">
<link href="css/index.css" rel="stylesheet" >

<html>

<head>
<title>상품페이지</title>
<meta charset="UTF-8">
<style type="text/css">
	#header{
	/* 	background-color:lightgrey; */
	/* 	height:100px; */
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
	
	#item{
    width:270px;
    float:left; margin: 0 13px;
    /* text-align: center; */
    text-align: left;
	}
	
	#item a{
    width:270px;
    float:left; margin: 0 13px;
    /* text-align: center; */
    text-align: left;
    text-decoration : none;
	color : black;
	}
	
	#list a{
    width:270px;
    float:left; margin: 0 13px;
    /* text-align: center; */
    text-align: left;
    text-decoration : none;
	color : black;
	}
	
 	#tableline p,h5{
		text-align: center;
	}  
</style>
</head>
<body>
	<jsp:include page="header.jsp" />

<!-- 	<div id="header">
		
	</div>
		<div id="nav">
		
	</div> -->
	
	
		<p style="padding:5px;"></p>
		<div id="section">
		
		<div style='width:800px; margin-left:auto; margin-right :auto; text-align : center;'>
		
			<c:set var="number" value="${kind}"/>
			
			<c:if test="${number == 1}"><c:set var="title" value="한식"/></c:if>
			<c:if test="${number == 2}"><c:set var="title" value="양식"/></c:if>
			<c:if test="${number == 3}"><c:set var="title" value="중식"/></c:if>
			<c:if test="${number == 4}"><c:set var="title" value="일식"/></c:if>
			<c:if test="${number == 5}"><c:set var="title" value="동남아"/></c:if>
			<c:if test="${number == 6}"><c:set var="title" value="샐러드"/></c:if>
			<c:if test="${number == 7}"><c:set var="title" value="신제품"/></c:if>
			<c:if test="${number == 8}"><c:set var="title" value="인기상품"/></c:if>
		
		<h1>${title}</h1>
		</div>
		
		<p style="padding:5px;"></p>
		
		 <div id="front"></div>
		 	<div style="margin-left : 590px">       
		    </div>
		    <div id="tableline">      
		    <table  style='margin-left : 40px;' id="list"> 
		    	<tr> 
		     	 <c:forEach items="${productlist}"  var="product" begin="0"  end="3"> 
		     		<td>
		     		<a href="item?prod_cd=${product.prod_cd}&image=2&page=1">
		            <img src="images/product/${product.image}" style="width: 270px;,height : 270px;"/> 
		          	</a>
		     		</td>
		      	</c:forEach>      
		    	</tr>
		    	<tr> 
		     	 <c:forEach items="${productlist}"  var="product" begin="0"  end="3"> 
		     		<td>
		     		<a href="item?prod_cd=${product.prod_cd}&image=2&page=1">
		            <h5> ${product.item_name}</h5>    	 
		          	</a>
		     		</td>
		      	</c:forEach>      
		    	</tr>		    	
			    <tr> 
		     	 <c:forEach items="${productlist}"  var="product" begin="0"  end="3"> 
		     		<td>
						<p>${product.saleprice}원</p>
		     		</td>
		      	</c:forEach>      
		    	</tr>		    	
		    	
		    	<tr><td><p style="padding:15px;"></p></td></tr>
		    	<!--  -->
		    	
    			<tr> 
		     	 <c:forEach items="${productlist}"  var="product" begin="4"  end="7"> 
		     		<td>
		     		<a href="item?prod_cd=${product.prod_cd}&image=2&page=1">
		            <img src="images/product/${product.image}" style="width: 270px;,height : 270px;"/> 
		          	</a>
		     		</td>
		      	</c:forEach>      
		    	</tr>
		    	<tr> 
		     	 <c:forEach items="${productlist}"  var="product" begin="4"  end="7"> 
		     		<td>
		     		<a href="item?prod_cd=${product.prod_cd}&image=2&page=1">
		            <h5> ${product.item_name}</h5>    	 
		          	</a>
		     		</td>
		      	</c:forEach>      
		    	</tr>		    	
			    <tr> 
		     	 <c:forEach items="${productlist}"  var="product" begin="4"  end="7"> 
		     		<td>
		    			<p>${product.saleprice}원</p>
		     		</td>
		      	</c:forEach>      
		    	</tr>			
		
				<tr><td><p style="padding:15px;"></p></td></tr>
				<!--  -->
		
		    	<tr> 
		     	 <c:forEach items="${productlist}"  var="product" begin="8"  end="11"> 
		     		<td>
		     		<a href="item?prod_cd=${product.prod_cd}&image=2&page=1">
		            <img src="images/product/${product.image}" style="width: 270px;,height : 270px;"/> 
		          	</a>
		     		</td>
		      	</c:forEach>      
		    	</tr>
		    	<tr> 
		     	 <c:forEach items="${productlist}"  var="product" begin="8"  end="11"> 
		     		<td>
		     		<a href="item?prod_cd=${product.prod_cd}&image=2&page=1">
		            <h5> ${product.item_name}</h5>    	 
		          	</a>
		     		</td>
		      	</c:forEach>      
		    	</tr>		    	
			    <tr> 
		     	 <c:forEach items="${productlist}"  var="product" begin="8"  end="11"> 
		     		<td>
		          		<p>${product.saleprice}원</p>
		     		</td>
		      	</c:forEach>      
		    	</tr>	
			
				<tr><td><p style="padding:15px;"></p></td></tr>
			</table>
			
			<p style="padding:10px;"></p>
			
			<div style='width:800px; margin-left:auto; margin-right :auto; text-align : center;'>
			<c:forEach var='index' begin='1' end='${page}'>
			
					<a href='itemlist?kind=${number}&page=${index}'>[${index}]</a>
			
			</c:forEach>
			
			
			
		  </div>
	</div>
		<div id="footer">
		
	</div>
</body>
</html>