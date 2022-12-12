<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<link href="css/event.css" rel="stylesheet" >
<html>
<head>
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
	 /* background-color: blue;  */
		width:1300px;
		text-align:left;
		float:left; 
		margin: auto;
		/* padding:10px; */
	}
	#footer{
		/* background-color:#FFCC00; */
		height:100px;
		clear:both;
	}
	#header, #nav, #footer {text-align:center;}
	#header, #footer{line-height:100px;}
	#nav{line-height:240px;}
	
</style>
<meta charset="UTF-8">
</head>
<body>
	<jsp:include page="header.jsp" />

	

<!-- 	<div id="header">
		
	</div>
		<div id="nav">
		
	</div> -->
		<p style="padding:5px;"></p>
		<div id="section">
		
		<form action="event" method="post">
		<h3 class='title'>이벤트</h3>
		
			<div class="mi_title">
			
			<a href='event?eventyn=a&page=1'>전체이벤트(${eventnum.total})</a>|
			<a href='event?eventyn=y&page=1'>진행중이벤트(${eventnum.y})</a>|
			<a href='event?eventyn=n&page=1'>종료된이벤트(${eventnum.n})</a>
			
			</div>
		
		<p style="padding:10px;"></p>
		
		<div id='eventlist'>
		<table>
			 <c:forEach var="event" items="${eventlist}"> 
			<tr>
			<td><a href='eventde?event_cd=${event.event_cd}&recom_num=${event.recom_num}'><img src="images/event/${event.image}" /></a></td> 
			
			<td id='text_list' >
			
				<a href='eventde?event_cd=${event.event_cd}&recom_num=${event.recom_num}' id='sub'>${event.subject}</a>
				<p id='date'>이벤트기간 ${event.start_dt}~${event.end_dt}</p>
				<P id='recom'>추천 : ${event.recom_num}</P>
				
			</td>
			</tr>
		 	 </c:forEach> 
		</table>
		
			
			<p style="padding:10px;"></p>
			
			<div style='margin-left : 700px'>
			<c:forEach var='index' begin='1' end='${eventnum.page}'>
			
					<a href='event?eventyn=${eventnum.page_mode}&page=${index}'>[${index}]</a>
			
			</c:forEach>
			</div>
		</div>
		</form>
	</div>
		<div id="footer">
		
	</div>
	
	
</body>
</html>