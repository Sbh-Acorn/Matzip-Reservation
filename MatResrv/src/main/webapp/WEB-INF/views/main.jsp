<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="/MatResrv/css/font.css">
    <link rel="stylesheet" href="/MatResrv/css/header.css">
    <link rel="stylesheet" href="/MatResrv/css/main.css">
    <link rel="stylesheet" href="/MatResrv/css/footer.css">
    <script defer src="/MatResrv/js/header.js"></script>
</head>
<body>
    <!-- flex 처리 -->
    <header>
        <!-- 로고 -->
        <img src="/MatResrv/img/logo.png" alt="" id="logo">
        <!-- 드롭다운 메뉴 -->
        <div id="dropdown_wrap">
            <div id="selected_box" class="item">
                <p id="selected">강동구</p>
                <img src="/MatResrv/img/down.svg" alt="" id="down_img">
            </div>
            <!-- display : none 처리된 dropdown 리스트 -->
            <ul id="dropdown">
                <li class="list">
                    <div class="item items">강동구</div>
                </li>
                <li class="list">
                    <div class="item items">강서구</div>
                </li>
                <li class="list">
                    <div class="item items">강남구</div>
                </li>
                <li class="list">
                    <div class="item items">강북구</div>
                </li>
            </ul>
        </div>
        <!-- 페이지명 설정부분 -->
        <h1 id="title">페이지명</h1>
        <!-- 프로필 부분 -->
        <div id="profile_wrap">
            <div id="profile_img_wrap">
                <img src="/MatResrv/img/profile.svg" alt="" id="profile">
            </div>
            <!-- 프로필 닉네임과 간단한 한마디? -->
            <div id="profile_info">
                <p id="nickname">test123</p>
                <p id="info">오늘도 잘 부탁드립니다</p>
            </div>
        </div>
    </header>
    
    <main>
        <!-- 로그인 및 회원가입 버튼 추가 -->
        <div style="text-align:center; margin-top:20px;">
            <!-- 로그인 버튼 -->
            <form action="${pageContext.request.contextPath}/login-select" method="get" style="display:inline;">
                <input type="submit" value="로그인" style="padding:10px 20px; font-size:16px;">
            </form>

            <!-- 회원가입 버튼 -->
            <form action="${pageContext.request.contextPath}/register.jsp" method="get" style="display:inline;">
                <input type="submit" value="회원가입" style="padding:10px 20px; font-size:16px;">
            </form>
        </div>
    </main>
    
    <!-- footer부분은 스크롤이 있을때는 css스타일을 그대로 사용하면 됩니다 -->
    <!-- 만약 main부분이 스크롤없이 공간이 남는다면 main.css의 height값을 조정하시면 됩니다-->
    
    <!-- 한글  -->
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
            <li class="footer_item">서비스 이용약관 | </li>
            <li class="footer_item">개인정보 처리방침 | </li>
            <li class="footer_item">입점 문의</li>
        </ul>
    </footer>
</body>
</html>
