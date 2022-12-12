<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/noticelist.css" rel="stylesheet">
<link href="css/qna.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/c0af9b6ae6.js"
	crossorigin="anonymous"></script>

<script>
window.onload=()=>{
    document.querySelector('.dropbtn_click').onclick = ()=>{
      dropdown();
    }
    document.getElementsByClassName('qna-choose-1').onclick = ()=>{
      showMenu(value);
    };
    dropdown = () => {
      var v = document.querySelector('.dropdown-content');
      var dropbtn = document.querySelector('.dropbtn')
      v.classList.toggle('show');
      dropbtn.style.borderColor = 'rgb(94, 94, 94)';
    }

    showMenu=(value)=>{
      var dropbtn_icon = document.querySelector('.dropbtn_icon');
      var dropbtn_content = document.querySelector('.dropbtn_content');
      var dropbtn_click = document.querySelector('.dropbtn_click');
      var dropbtn = document.querySelector('.dropbtn');

      dropbtn_icon.innerText = '';
      dropbtn_content.innerText = value;
      document.getElementById('category').value=value;
      dropbtn_content.style.color = '#252525';
      dropbtn.style.borderColor = '#3992a8';
    }
  }
  window.onclick= (e)=>{
    if(!e.target.matches('.dropbtn_click')){
      var dropdowns = document.getElementsByClassName("dropdown-content");

      var dropbtn_icon = document.querySelector('.dropbtn_icon');
      var dropbtn_content = document.querySelector('.dropbtn_content');
      var dropbtn_click = document.querySelector('.dropbtn_click');
      var dropbtn = document.querySelector('.dropbtn');

      var i;
      for (i = 0; i < dropdowns.length; i++) {
        var openDropdown = dropdowns[i];
        if (openDropdown.classList.contains('show')) {
          openDropdown.classList.remove('show');
        }
      }
    }
  }
  
  </script>
  

 


</head>
<body>
	<jsp:include page="header.jsp" />


	<hr>
	<div id="header">
		<h2>고 객 센 터</h2>
	</div>
	</div>
	<div class="sectiondiv">
	<div id="section">
		<div class="info">
			<a href="noticelist">공지사항</a>
		</div>
		<div class="info">Q & A</div>
		<li><a href="oftenqnalist" class="qna">자주하는 질문</a></li>
		<p>
		<li><a href="qnalist" class="qna">1:1 문의</a></li>
	</div>

	<section class="infosection">

		<h3>1:1 문의</h3>
		<div class="qnaframebox">
			<form action="qnaadd" method="post" name="for">
				<div class="qna-choose">
					<div>
						<div class="qna-choose-a">
							<label for="qna-choose-1">유 형</label>
							<div class="star">
								<i class="fa-solid fa-star"></i>
							</div>
						</div>
					</div>
					<div class="dropdown" >
						<button class="dropbtn">
							<span class="dropbtn_icon"></span> <span class="dropbtn_content">문의유형을선택해주세요</span> 
							<span class="dropbtn_click" onclick="dropdown()"></span>
							
						</button>
						<input type="hidden" class="txt1" name="category" id="category" />
						<div  class="dropdown-content" >
							<div  class="qna-choose-1" onclick="showMenu(this.innerText)">주문/결제/반품/교환문의</div>
							<div class="qna-choose-1" onclick="showMenu(this.innerText)">이벤트/쿠폰/적립금문의</div>
							<div class="qna-choose-1" onclick="showMenu(this.innerText)">상품문의</div>
							<div class="qna-choose-1" onclick="showMenu(this.innerText)">배송문의</div>
							<div class="qna-choose-1" onclick="showMenu(this.innerText)">상품누락 문의</div>
							<div class="qna-choose-1" onclick="showMenu(this.innerText)">기타문의</div>
						</div>
					</div>
				</div>
				<div class="qna-choose">
					<div>
						<div class="qna-choose-a">
							<label for="txt1">제 목</label>
							<div class="star">
								<i class="fa-solid fa-star"></i>
							</div>
						</div>

					</div>
					<div class="subject-in">
						<input type="text" class="txt1" name="subject" id="subject"  maxlength="100"	placeholder="제목을 입력해주세요">
					</div>
				</div>
				<div class="qna-textarea">
					<div>
						<div class="qna-choose-a">
							<label for="textarea">내 용</label>
							<div class="star">
								<i class="fa-solid fa-star"></i>
							</div>
						</div>
					</div>
					<div class="textarea-in">
						<textarea name="content" id="content" class="textarea" placeholder="내용을 입력해주세요"></textarea>
					</div>
				</div>
				<div class="qna-imageupload">
					<div class="cam-div">
						<!-- <div class="cam" id="image" value="}">
							<i class="fa-solid fa-camera"></i>
						</div>
						<div class="cam" id="image" >
							<i class="fa-solid fa-camera"></i>
						</div>
						<div class="cam" id="image" >
							<i class="fa-solid fa-camera"></i>
						</div> -->
						<!-- <div id="image-files">
						<input type="file" class="real-upload" id="image" value="image" accept="image/*" required multiple > -->
						
						
						<div id="display-image" style="width: 400px;  height: 225px;  border: 1px solid black;
							  background-position: center;  background-size: cover;">
						  	<input type="file" id="image" accept="image/jpeg, image/png, image/jpg">
						</div>
						
					</div>
						
					<div class="cam-list">
						<li>30MB 이하의 이미지만 업로드 가능합니다.</li>
						<li>상품과 무관한 내용이거나 음란 및 불법적인 내용은 통보없이 삭제 될 수 있습니다.</li>
						<li>사진은 최대 3장까지 등록가능합니다.</li>
					</div>
				</div>

				<input type="hidden" name="email" value="${email}" />
				<input type="hidden" name="email" value="${qnacd}" /> <!-- 등록시 생성되는  qnacd 값과 동일해야 하는데 여기서는 0으로 나옴! 수정필!! -->
				

				<div class="qnasubmit">
					* <input type="submit" value="등록하기"> * 
					<a href="qnalist"><input type="button" value="작성취소"></a>
				</div>

			</form>
		</div>

	</section>
	</div>

</body>
</html>