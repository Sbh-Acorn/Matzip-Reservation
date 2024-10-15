<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<link rel="stylesheet" href="/MatResrv/css/header.css">
<link rel="stylesheet" href="/MatResrv/css/footer.css">
<link rel="stylesheet" href="/MatResrv/css/font.css">
<link rel="stylesheet" href="/MatResrv/css/main.css">
<title>${store.stName}정보</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta charset="utf-8" />
<style>
/* 기존 CSS 유지 */
.c1 {
	font-size: 40px;
	margin-bottom: 10px;
}

.c2 {
	font-size: 24px;
	margin-bottom: 5px;
}

.reserve-button {
	width: 180px;
	height: 80px;
	font-size: 32px;
	background-color: lightgray;
	border: 1px solid black;
	margin-top: 20px;
	cursor: pointer;
}

.button-container button {
	margin: 10px; /* 버튼 간격 조정 */
	padding: 10px 20px; /* 버튼 패딩 조정 */
}

.info-container {
	display: flex;
	align-items: flex-start;
	position: relative; /* 포지셔닝을 위해 relative 설정 */
}

.info-box.large-box {
	width: 800px;
	height: 600px;
	padding: 20px;
	border: 1px solid black;
	background-color: white;
	box-sizing: border-box;
	position: relative;
	display: flex;
	flex-direction: column;
}

.info-box.small-box {
	width: 300px;
	height: 140px;
	border: 1px solid black;
	background-color: #f9f9f9;
	padding: 10px;
	position: absolute;
	box-sizing: border-box;
	bottom: 10px;
	right: 10px;
}

img {
	width: 300px;
}
</style>
</head>
<header>
	<img src="/MatResrv/img/logo.png" alt="" id="logo">
	<h1 id="title">가게 상세 정보</h1>
</header>

<body>
	<div class="info-container">
		<div class="info-box large-box">
			<div class="c1">${store.stName}</div>
			<div class="c2">${store.stDescription}</div>
			<div class="c2">별점: ${store.stRate}</div>


			<!--			 -->
			<div>
				<img src="${store.imgurl}" alt="이미지">
			</div>

			<div class="info-box small-box">

				<div class="c2">가게 위치: ${store.stAddress}</div>
				<div class="c2">카테고리: ${store.menuCategory}</div>
			</div>
		</div>

		<button class="reserve-button">예약하기</button>
	</div>

	<div class="button-container">
		<button class="btn" onclick="showSection('home')">홈</button>
		<button class="btn" onclick="showSection('news')">소식</button>
		<button class="btn" onclick="showSection('menu')">메뉴</button>
		<button class="btn" onclick="showSection('photos')">사진</button>
		<button class="btn" onclick="showSection('reviews')">리뷰</button>
		<button class="btn" onclick="showSection('inform')">매장 정보</button>
	</div>

	<div id="home" class="content-section">홈 화면 내용</div>
	<div id="news" class="content-section">소식 화면 내용</div>
	<div id="menu" class="content-section">메뉴 화면 내용</div>
	<div id="photos" class="content-section">사진 화면 내용</div>
	<div id="reviews" class="content-section">리뷰 화면 내용</div>
	<div id="inform" class="content-section">매장 정보 화면 내용</div>

	<script>
        function showSection(section) {
            const sections = document.querySelectorAll('.content-section');
            sections.forEach((el) => {
                el.style.display = 'none';
            });
            document.getElementById(section).style.display = 'block';
        }

        showSection('home');
    </script>
</body>

<footer>
	<p id="footer_title">(주)페이지</p>
	<p class="footer_txt">대표 : 소병학</p>
	<p class="footer_txt">주소 : 경기도 광주시 오포읍 신현리</p>
	<p class="footer_txt">사업자 등록번호 : 000-00-00000</p>
	<p class="footer_txt">통신판매업 신고번호 : 0000-0000호</p>
	<p class="footer_txt">대표번호 : 010-3016-7609</p>
	<div id="footer_txt">
		<p>(주)페이지는 통신판매중개자이며 통신판매의 당사자가 아닙니다. (주)페이지는</p>
		<p>예약 및 구매와 관련하여 통신판매업자가 제공하는 상품 및 거래정보, 거래 등에</p>
		<p>대하여 일체의 책임을 지지 않습니다.</p>
	</div>
	<ul>
		<li class="footer_item">서비스 이용약관 |</li>
		<li class="footer_item">개인정보 처리방침 |</li>
		<li class="footer_item">입점 문의</li>
	</ul>
</footer>
</html>
