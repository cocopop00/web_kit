<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.ZipCode"  %>   
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
	function addrClick(clicked_id){
		// 값
 		var addr = document.getElementById(clicked_id).innerText;
		
		var zipnum = addr.substring(0,7);	
		var address = addr.substring(8);
		
		window.opener.document.getElementById('zipnum').value = zipnum;
		window.opener.document.getElementById('address').value = address;
		
 		window.close();
		
	}

</script>

<style type="text/css">
	#header,#nav{text-align:center;} 
	a{
		text-decoration:none;
		color : black;
	}
	table{
		text-align:center;
		/* margin-left:auto; */
		/* margin-right:auto; */
	}
	td{border-bottom : 1px solid black;}
</style>
</head>
<body>

	<div id ="header">
		
		<h1>주소 찾기</h1>
				
	</div>
	
	<div id ="nav">
	
		<form name="frm" action="zipcode" method="post">
	
		동,이름<input type="text" name="code" /><input type="submit" value="검색"  />
		
		
	<%
	
		List<ZipCode> zipss = (ArrayList<ZipCode>)request.getAttribute("zips");
		String addr="";
	
		if(zipss != null){
			
			for(int i = 0; i < zipss.size(); i++){	
				addr =  zipss.get(i).getZip_num();
				addr += " ";
				addr += zipss.get(i).getSido(); 
				addr += " ";
				addr += zipss.get(i).getGugun(); 
				addr += " ";
				addr += zipss.get(i).getDong(); 
				addr += " ";
				if(zipss.get(i).getBunji() != null){
					addr += zipss.get(i).getBunji();
				}

	%>
		<table>
		<tr>
		<td><p id="addr<%=i%>" onclick="addrClick(this.id)" ><%= addr %></p></td>
		
		</tr>
	<% 
			}
		}
	%>
		

		</table>
	</form>		
	</div>

</body>
</html>