<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<link href="css/index.css" rel="stylesheet" >
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	#header{
		/* background-color:lightgrey; */
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
	/*    background-color: blue;  */  
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
	
	#item p,h5{
		text-align: center;
	}  
	
	body{
	top:100px;
	display:flex;
	flex-direction:column;
	align-content:center;
	width:100%; 
} 
	
</style>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

</script>

</head>
<body>

	<jsp:include page="header.jsp" />

<!-- 	<div id="header">
		
	</div>
		<div id="nav">
		
	</div> -->
	
	
		<p style="padding:5px;"></p>
		
		<div id="section">
		  
		 <div id="front"></div>
		 	<div style="margin-left :570px">   
		     <h1 >신제품</h1>  
		    </div>
		    <p style="padding:5px;"></p>
		    <div style='margin-left : 40px;'>         
		      <c:forEach items="${productNew}"  var="product">
		        <div id="item" >
		          <a href="item?prod_cd=${product.prod_cd}&image=2&page=1">
		            <img src="images/product/${product.image}" style="width: 270px;,height : 270px;"/>
		            <h5> ${product.item_name}</h5>    	 
		          </a> 
		          <p style="margin-left : 20px ">${product.saleprice}원</p>   
		        </div>	 
		      </c:forEach>      
		    </div>
		  
		 <br><br><br><br><br><br><br><br><br>
		 <br><br><br><br><br><br><br><br><br>
		 
		  <div class="clear"></div>
		  
		  <div id="front"></div>
		 	<div style="margin-left : 570px">   
		    <h1 >인기상품</h1>     
		    </div>
		    <div style="margin-left : 30px">         
		      <c:forEach items="${productBest}"  var="product">
		        <div id="item" >
		          <a href="item?prod_cd=${product.prod_cd}&image=2&page=1">
		            <img src="images/product/${product.image}" style="width: 270px;,height : 270px;"/>
		            <h5> ${product.item_name}</h5>     
		          </a>    
		          <p style="margin-left : 20px ">${product.saleprice}원</p>	
		        </div>	 
		      </c:forEach>      
		    </div>
		  
	</div>
		<div id="footer">
		
	</div>
</body>
</html>