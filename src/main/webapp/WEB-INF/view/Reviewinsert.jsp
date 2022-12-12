<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 등록</title>
<style type="text/css">

	#header{
		/*  background-color:lightgrey;  */
 		height:100px;
	}
	#nav{
	/* 	background-color:#339999;  */ 
		color:white;
		width:200px;
		height:450px;
		float:left;
	}
	#section{
	   /*  background-color: blue;  */
		width:1000px;
		text-align:left;
		float:left; 
		margin:auto;
		/* padding:10px; */
	}
	#footer{
	 	/*  background-color:#FFCC00;   */
		height:100px;
		clear:both;
	}
	#header, #nav, #footer {text-align:center;}
	#header, #footer{line-height:100px;}
	#nav{line-height:240px;}
	
		#rewiew_bu{
	background-color: #121319;
	border-radius: 5px;
	color: white;
	cursor: pointer;
	font-size:7px; 
	padding:10px 10px
	
	}
	
</style>

<script type="text/javascript">

function check(){
	
	var buf = false;
	var num = 0;
	
	buf = selectitem();
	if(!buf) num += 1;	
	buf = title();
	if(!buf) num += 1;
	buf = content();
	if(!buf) num += 1;
	buf = image();
	if(!buf) num += 1;
	
	
	
	// 0이면 문제 없다.
	if(num == 0) return buf = true;
	else return buf = false;
	
}


function selectitem(){	
	 var selectitem = document.getElementById('item');
	 
	 if( selectitem.value == "" ){
         alert("제품선택 해 주세요!!!");                
         return false;
  }
	 return true; 	
}


function title(){	
	 var title = document.getElementById('title');
	 if( title.value == "" ){
          alert("제목을 입력해 주세요!!!");                
          title.focus();	// 엔터이벤트.
          return false;
   }
	 return true; 	
}

function content(){	
	 var t_content = document.getElementById('t_content');
	 if( t_content.value == "" ){
          alert("내용을 입력해 주세요!!!");                
          t_content.focus();	
          return false;
   }
	 return true; 	
}


function image(){
	
	var uploadFile1 = document.getElementById('uploadFile1');
	var uploadFile2 = document.getElementById('uploadFile2');
	var uploadFile3 = document.getElementById('uploadFile3');
	var uploadFile4 = document.getElementById('uploadFile4');
	var uploadFile5 = document.getElementById('uploadFile5');
	var uploadFile6 = document.getElementById('uploadFile6');
	
	if(uploadFile1.value == "" && uploadFile2.value == "" && uploadFile3.value == "" && uploadFile4.value ==  "" && uploadFile5.value ==  "" && uploadFile6.value ==  "" )
	{
		alert("사진을 1개 이상 올려주세요!");                
        return false;
	}
	else return true;
		
}

</script>

</head>
<body>
	<jsp:include page="header.jsp" />
<!-- 	<div id="header"> -->
	
<!-- </div>
	<div id="nav">
	
</div> -->

	<p style="padding:5px;"></p>
	<div id="section">
	<!-- onsubmit="return check();" -->
	<!-- //onsubmit="return check(); -->
	
	<div style='width:800px; margin-left:auto; margin-right :auto; text-align : center;'> 
	<h1>리뷰 등록</h1>
	</div>
	<form action="reviewinsert" method="post" enctype="multipart/form-data" onsubmit="return check()">
	
		<table border=0 align=center cellspacing=1 bordercolor=white
			bordercolorlight=DarkRed width=600 style="margin-left:300px">


				
			<tr>
				<td width=100px>제품</td>
				<td>
				<select name="item" id="item">
				    <option value="">제품선택</option>
					      <c:forEach var="itemnum" items="${order}">
					     	<option value="${itemnum.prod_cd}">${itemnum.item_name}</option>
					     </c:forEach> 
				</select>
				</td>
			</tr>		
			<tr>
				<td width=100px>작성자</td><td><input type="text" id="user" name="user" value="${name}"/></td>
			</tr>		
			<tr>
				<td>제목</td><td><input type="text" id="title" name="title" /></td>
			</tr>
			<tr>
				<td>내용</td>
				<td>
				<textarea style=" resize: none;" id="t_content" name="t_content" rows="10" cols="60" ></textarea>
				</td>
			<tr>
				<td>이미지 : </td>
				<td>
					<input type="file" name="uploadFile1" id="uploadFile1"/>
					<input type="file" name="uploadFile2" id="uploadFile2"/>
					<input type="file" name="uploadFile3" id="uploadFile3"/>
					<input type="file" name="uploadFile4" id="uploadFile4"/>
					<input type="file" name="uploadFile5" id="uploadFile5"/>
					<input type="file" name="uploadFile6" id="uploadFile6"/>		
				</td>	
			</tr>
		
		
		</table>
		
		<br><br>
		
		<div style='width:800px; margin-left:auto; margin-right :auto; text-align : center;'> 
		<input type="submit" name="insert" id="rewiew_bu" value="등록" />
		<input type="reset" name="reset" id="rewiew_bu" value="닫기" />
		</div>
		
	</form>
	
</div>
	<div id="footer">
	
</div>
</body>
</html>