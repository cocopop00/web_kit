<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns:th="http://www.thymeleaf.org">
<link href="css/index.css" rel="stylesheet" >

<html>

<head>
<meta charset="UTF-8">
<style type="text/css">
	#header{
	/* 	background-color:lightgrey; */
		/* height:100px; */
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
		
		
		
		
			<!-- 이벤트로 번호로 페이지 넘긴다. -->
			<c:forEach items="${title}" var="eventTitle" >
			
				<c:set var="title" value="${eventTitle.subject}"/>
				<c:set var="eventcd" value="${eventTitle.event_cd}"/>
			
			</c:forEach>
		
		
				
		<div style="margin-left : 450px">
			<h1>${title}</h1>
		</div>
		
		<p style="padding:5px;"></p>
		
		 <div id="front"></div>
		 	<div >       
		    </div>
		    <div id="tableline">      
		    <table width='20px' height='30px' style='margin-left:50px; text-align: center' id="list"> 
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
			
			</div>
			<p style="padding:10px;"></p>
			
			<div style='margin-left : 630px'>
			<c:forEach var='index' begin='1' end='${page}'>
			
				<a href='eventitemlist?event_cd=${eventcd}&page=${index}'>[${index}]</a>
					
			</c:forEach>
			
		  </div>
	</div>
		<div id="footer">
		
	</div>
</body>
</html>