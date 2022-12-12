<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<html xmlns:th="http://www.thymeleaf.org">
<link href="css/index.css" rel="stylesheet" >        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰</title>
<link href="css/event.css" rel="stylesheet" >
<style type="text/css">
	#header{
		/* background-color:lightgrey; */
		height:100px;
	}
	#nav{
		/* background-color:#339999; */
		color:white;
		width:120px;
		height:300px;
		float:left;
	}
	#section{
	 /*  background-color: blue;   */
		width:1300px;
		text-align:left;
		float:left; 
		margin:auto;
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
	
	
	#subimage img{
		width: 100px; 
		height : 100px; 
		margin-right: 0px;
	}
	
	
	#rewiew_bu{
	background-color: #121319;
	border-radius: 5px;
	color: white;
	cursor: pointer;
	font-size:7px; 
	padding:10px 10px
	
	}
	
	.title{
	font-family: "Times New Roman", Times, serif;
	font-size: 30px; 
	color: #000;
	padding-bottom: 15px;
	border-bottom: 1px dotted #000;
}


.title_sub{
	font-family: "Times New Roman", Times, serif;
	font-size: 25px; 
	color: #000;
}


#eventlist img{
	width: 450px; 
	height : 180px;
}

#text_list {
	vertical-align : top;
	
}

.mi_title{
	margin-top : -26px;
}

#date{margin-top : 1px;}
#recom{margin-top : -15px;}

a{text-decoration : none;
	color : black;
}


table#event_tile {

	margin-top : -30px;
	background-color:rgb(226, 226, 226);
    border-collapse:collapse;  
    border-top: 2px solid  #333;    
    border-bottom: 1px solid  #333; 
    width:100%;    
    height:50px;          
    margin-bottom: 20px;
    
}


table#event_tile tr,td{
	margin-left: 100px;
}


table#event_sub {
	margin-top : -19px;
    border-collapse:collapse;  
    border-top: 2px solid  #333;    
    border-bottom: 1px solid  #333; 
    width:100%;
    height:30px;                 
    margin-bottom: 20px;
}


#item img{
	width: 190px; 
	height : 200px; 
}
	
	
</style>		

<script type="text/javascript">
	
	function goimage(image){
		
		window.open('image?imagename='+image, 'pop', "width=600,height=600");
		
	}
	
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

		<div style='width:800px; margin-left:auto; margin-right :auto; text-align : center;'>   
		     <h1 >상품 리뷰</h1>  
		</div>
	<!-- 	pageContext.setAttribute("eventdetail", eventdetail); -->
		
		<p style="padding:10px;"></p>
		
		<c:forEach var="info" items="${reviewdetail}">
		
			<c:set var="name" value="${info.name}"/>
			<c:set var="title" value="${info.subject}"/>
			<c:set var="content" value="${info.content}"/>
			<c:set var="recom_num" value="${info.recom_num}"/>
			<c:set var="indate" value="${info.indate}"/>
			<c:set var="reviewcd" value="${info.review_cd}"/>
		
		</c:forEach>
		
		<table id='event_tile' style='width:800px; margin-left:auto; margin-right :auto; text-align : center; '>
			<tr>
				<th style="background-color : rad;">${title}</th>
			</tr>
		</table>
		
		<table id='event_sub' style='width:800px; margin-left:auto; margin-right :auto; text-align : center;'>
			<tr>
				<td>작성자 : ${name}</td>
				<td>등록일 : ${indate}</td>
				<td>추천수 : ${recom_num}</td>
				<td><a href='recomck?reviewcd=${reviewcd}&recom=${recom_num}'>추천하기</a></td>
			</tr>
		</table>		
		
		<p style="padding:5px;"></p>		
		
		<div style='width:800px; height:400px; margin-left:auto; margin-right :auto; text-align : left;'>
		<textarea style="margin-left:20px; width:100%; height:100%; font-family: 굴림체; font-size: 1em; border: none; background: transparent; cursor:default; resize: none;"  readonly onfocus="this.blur()">${content}</textarea>
		</div>
		
		<p style="padding:20px;"></p>

		<div id="subimage">
			<table id="subimagetable" style='width:120px; margin-left:250px; margin-right :0px; text-align : left;'>
				<tr>
					<c:forEach var="sub" items="${reviewdetail}" begin="0" end="${imagesize}">
					 <td>
						 <img  id="${sub.image}" style='cursor:pointer' align="left" src="images/review/${sub.image}" onclick="goimage(this.id)" />	 
					</td>
					</c:forEach>
				</tr>
			</table>
		</div>	
		
		<p style="padding:15px;"></p>
		
		<table id='event_tile' style='width:800px; margin-left:auto; margin-right :auto; text-align : center;'>
			<tr>
				<th></th>
			</tr>
		</table>
		
		<p style="padding:5px;"></p>
		
		<div style='width:800px; margin-left:auto; margin-right :auto; text-align : right; '>
		<input type="button" id = "rewiew_bu" onclick="location.href='reviewlist?&page=1'" value="목록" />
		</div>
		
	</div>
		<div id="footer">
		
	</div>

</body>
</html>