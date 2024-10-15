<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 선택</title>
    <link rel="stylesheet" href="/MatResrv/css/header.css">
    <link rel="stylesheet" href="/MatResrv/css/selectLogin.css">
    <link rel="stylesheet" href="/MatResrv/css/font.css">
    <script defer src="/MatResrv/js/header.js"></script>
    <script defer src="/MatResrv/js/selectLogin.js"></script>
</head>
<body>
    <!-- flex 처리 -->
    <header>
        <!-- 로고 -->
        <img src="/MatResrv/img/logo.png" alt="" id="logo">
        <!-- 드롭다운 메뉴 -->
        <div id="dropdown_wrap">
            <div id="selected_box" class="item">
                <p id="selected">서울 북부</p>
                <img src="/MatResrv/img/down.svg" alt="" id="down_img">
            </div>
            <!-- display : none 처리된 dropdown 리스트 -->
            <ul id="dropdown">
                <li class="list">
                    <div class="item items">서울 북부</div>
                </li>
                <li class="list">
                    <div class="item items">서울 남부</div>
                </li>
                <li class="list">
                    <div class="item items">경기 북부</div>
                </li>
                <li class="list">
                    <div class="item items">경기 남부</div>
                </li>
            </ul>
        </div>
        <!-- 페이지명 설정부분 -->
        <h1 id="title">로그인 선택 화면</h1>
        <!-- 프로필 부분 -->
        <div id="profile_wrap">
            <div id="profile_img_wrap">
                <img src="/MatResrv/img/profile.svg" alt="" id="profile">
            </div>
            <!-- 프로필 닉네임과 간단한 한마디? -->
           <!--  <div id="profile_info">
                <p id="nickname">test123</p>
                <p id="info">오늘도 잘 부탁드립니다</p>
            </div>-->
        </div>
    </header>
    <main>
        <div id="select_wrap">
            <div class="select" id="customerLogin">
                <div class="select_img_wrap">
                    <img src="/MatResrv/img/people.svg" alt="" class="select_img">
                </div>
                <p class="select_txt">고객 로그인</p>
            </div>
            <div class="select" id="storeLogin">
                <div class="select_img_wrap">
                    <img src="/MatResrv/img/manager.svg" alt="" class="select_img">
                </div>
                <p class="select_txt">점주 로그인</p>
            </div>
        </div>
    </main>
    <!-- 숨겨진 폼: 고객 로그인 -->
    <form id="customerLoginForm" action="${pageContext.request.contextPath}/cus-login" method="get" style="display: none;">
    </form>

    <!-- 숨겨진 폼: 점주 로그인 -->
    <form id="storeLoginForm" action="${pageContext.request.contextPath}/store-login" method="get" style="display: none;">
    </form>
<%--     <!-- 일반 사용자 로그인 버튼 -->
    <form action="${pageContext.request.contextPath}/cus-login.jsp" method="get">
        <input type="submit" value="일반 사용자 로그인">
    </form>

    <!-- 가게 로그인 버튼 -->
    <form action="${pageContext.request.contextPath}/store-login.jsp" method="get">
        <input type="submit" value="가게 로그인">
    </form> --%>
</body>
</html>
