<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품문의</title>
<style type="text/css">

	#header{
		 /* background-color:lightgrey; 
 */		height:100px;
	}
	#nav{
	/* 	 background-color:#339999;  */
		color:white;
		width:0px;
		height:0px;
		float:left;
		
	}
	#section{
	/*    background-color: blue;  */  
		width:550px;
		text-align:left;
		float:left; 
		margin: auto;
		/* padding:10px; */
	}
	#footer{
	 	/* background-color:#FFCC00;  */
		height:5px;
		clear:both;
	}
	#header, #nav, #footer {text-align:center;}
	#header, #footer{line-height:100px;}
	#nav{line-height:240px;}
	
		#qna_bu{
	background-color: #121319;
	border-radius: 5px;
	color: white;
	cursor: pointer;
	font-size:5px; 
	padding:8px 8px
	
	}
	
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

	function delectck(){

		var buf = confirm("글을 삭제하시겠습니까?");
		
		
		if(buf){
			
			var prodqcode = document.getElementById('prodq_cd').value;
			
			//alert(prodcode);
			
 			$.ajax({
				type:"get",
				data:{"prodqcode":prodqcode},
				url:"itemqnaview",
				datatype :"json",
			    success:function(result){
			    	//alert("결과");
			   	//	alert(result);
			    	if(result == 0){
			    		alert("삭제완료 되었습니다.");
			    		var  scrollTop =  opener.parent.window.document.body.scrollTop;
			    		opener.parent.location.reload();
			    		opener.parent.window.document.body.scrollTop = scrollTop;
			    		window.close();	 	    		
			    	}else if(result == 2){
			    		alert("로그아웃된 상태입니다.");
				    	opener.location.href="login";
						window.close();					    		
			    	}else{
			    		alert("삭제실패");
			    	} 

				}
			});   	
		}
		
	
	}
	

	
	  function refreshAndClose() {
	        window.opener.location.reload(true);
	        window.close();
	    }
	
	
</script>

</head>
<body>

<!-- <div id="header"> -->
	
<!-- 	<div id="header">
		
	</div>
		<div id="nav">
		
	</div> -->
	
	
		<p style="padding:5px;"></p>
	<div id="section">
	
	<div style='width:400px; margin-left:auto; margin-right :auto; text-align : center;'> 
		<h2>상품 Q&A 글</h2>
	</div>
	
	<form action="itemqnainsert" method="post" name="qna">
	
		
		<table >
			<tr>
				<td>작성자</td><td><input type="text" id="user" name="user" value="${producqna.name}" readonly/></td>
			</tr>		
			<tr>
				<td>제목</td><td><input type="text" id="title" name="title" value="${producqna.subject}" readonly/></td>
			</tr>
			<tr>
				<td>내용</td>
				<td>
				<textarea style=" resize: none;" id="t_content" name="t_content" rows="10" cols="60" readonly>${producqna.content}</textarea>
				</td>
			</tr>
			<tr>
				<td>답변내용</td>
				<td>
				<textarea style=" resize: none;" id="t_content" name="t_content" rows="10" cols="60" readonly>${producqna.reply}</textarea>
				</td>
			</tr>								
		</table>
		
		<c:if test="${!empty sessionScope.authInfo && sessionScope.authInfo.email.equals(producqna.email)}" >
			<div style="margin-left:480px"><input type="button" id="qna_bu" class="cancel" value="삭제" onclick="delectck()" /></div>
		</c:if>
	
	 	<input type="hidden" id="prodq_cd" name="prodq_cd" value="${producqna.prodq_cd}" />
	 	<input type="hidden" id="prod_cd" name="prod_cd" value="${producqna.prod_cd}" />
		<input type="hidden" id="image" name="image" value="${image}" />
		
		 <p style="padding:1px;"></p> 
		
		<div style='width:400px; margin-left:auto; margin-right :auto; text-align : center;'> 
	 		<input type="button" id="qna_bu" class="submit" value="닫기"  onclick="self.close()"/>
		</div>
	</form>
	
</div>
	<div id="footer">
	
</div>


</body>
</html>