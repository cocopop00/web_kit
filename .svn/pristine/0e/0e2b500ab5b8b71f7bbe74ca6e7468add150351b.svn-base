<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

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
		margin:auto;
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
	
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

	function check(){

		var buf = false;
		var num = 0;
		
		buf = pwck();
		if(!buf) num += 1;
		
		// 0이면 문제 없다.
		if(num == 0) return buf = true;
		else return buf = false;
			
	}
	
	function pwck(){
		 var pw = document.getElementById('pwd');
		 var pwuser = document.getElementById('dbpwd');
		 
		 if( pw.value == "" ){
             alert("비밀번호를 입력해 주세요");                
             pw.focus();	// 엔터이벤트.
             return false;
     	 }
		 else{
			if(pw.value == pwuser.value){
				return true; 
			}
			else{
	            alert("비밀번호가 틀렸습니다.");                
	            pw.focus();	// 엔터이벤트.
	            return false;
			}			 
		 }
		 
	}
	

</script>

</head>
<body>

<!-- //<div id="header"> -->
	
<!-- 	<div id="header">
		
	</div>
		<div id="nav">
		
	</div> -->
	
	<p style="padding:5px;"></p>
		
	<div id="section">
	
		<div style="margin-left:210px">
		<h2>비밀번호 확인</h2>
	</div>
	
	<p style="padding:5px;"></p>
	
	<form action="qnaview" method="get" name="qna" onsubmit="return check();">
	
		<P style="margin-left : 200px">비밀번호를 입력해주세요</P>
		<P style="margin-left : 200px"><input type="text" id="pwd" name="pwd" /></P>
	
	<%-- 	<input type="hidden" name="prod_cd" value="${prodcd}" />
		<input type="hidden" name="image" value="${imagecd}" /> --%>
		
		<p style="padding:10px;"></p>
		
		<div style="margin-left:240px">
	 	<input type="submit" class="submit" value="확인" />
 	 	<input type="button" class="cancel" value="취소" onclick="self.close()" />
		</div>
		
		<input type="hidden" id="dbpwd" name="dbpwd" value="${producqna.pwd}" />
		<input type="hidden" id="prodqcd" name="prodqcd" value="${producqna.prodq_cd}" />
		
		<input type="hidden" id="image" name="image" value="${image}" />
		
	</form>
	
</div>
	<div id="footer">
	
</div>


</body>
</html>