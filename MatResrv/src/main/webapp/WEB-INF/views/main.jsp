<%@page import="model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <script defer src="/MatResrv/js/main.js"></script>
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
                <%
                Customer loggedInCustomer = (Customer) session.getAttribute("loggedInCustomer");
                String profileImage;
                if (loggedInCustomer != null) {
                    profileImage = "/MatResrv/img/people2.svg"; // 로그인된 경우
                } else {
                    profileImage = "/MatResrv/img/profile.svg"; // 비로그인 상태일 때 기본 이미지
                }
            	%>
            <img src="<%= profileImage %>" alt="" id="profile"
                <% if (loggedInCustomer == null) { %>
                    onclick="window.location.href='<%= request.getContextPath() %>/login-select'"
                <% } %>
            >
<!--        <img src="/MatResrv/img/profile.svg" alt="" id="profile"> -->
            </div>
            <!-- 프로필 닉네임과 간단한 한마디? -->
            <div id="profile_info" <% if (loggedInCustomer == null) { %> style="display:none" <% } %>>
            <p id="nickname">
                <%
                    if (loggedInCustomer != null) {
                        out.print(loggedInCustomer.getCusName());
                    }
                %>
            </p>
            <p id="info">오늘도 잘 부탁드립니다</p>
        	</div>
<!--             <div id="profile_info">
                <p id="nickname">test123</p>
                <p id="info">오늘도 잘 부탁드립니다</p>
            </div> -->
        </div>
    </header>
    
    <main>
        <!-- 배너를 테스트 할때는 창을 하나만 켜두고 하는것을 권장합니다 -->
        <!-- 여러개의 창을 띄워놓고 테스트 할 경우 타이머 관련 문제가 발생하여 높은 확률로 비정상적인 작동이 발생합니다. -->
        <div id="banner_wrap">
            <div id="left_wrap"><img src="/MatResrv/img/left.svg" alt="" id="left"></div>
            <div id="right_wrap"><img src="/MatResrv/img/right.svg" alt="" id="right"></div>
            <div id="banner">
                <ul id="banner_list">
                    <!-- banner img들 -->
                    <li class="banner_item"><img src="/MatResrv/img/testImg.png" alt="" class="banner_img"></li>
                    <li class="banner_item"><img src="/MatResrv/img/testImg.png" alt="" class="banner_img"></li>
                    <li class="banner_item"><img src="/MatResrv/img/testImg.png" alt="" class="banner_img"></li>
                    <li class="banner_item"><img src="/MatResrv/img/testImg.png" alt="" class="banner_img"></li>
                    <li class="banner_item"><img src="/MatResrv/img/testImg.png" alt="" class="banner_img"></li>
                </ul>
            </div>
        </div>
        <hr>
        <h1 id="select_title">원하는 음식을 편하게 찾아보세요</h1>
        <div id="select_wrap">
            <ul id="select">
                <li class="select_item"><div class="select_img_wrap"><img src="/MatResrv/img/korean.png" alt="" class="select_img"></div><p class="select_txt">한식</p></li>
                <li class="select_item"><div class="select_img_wrap"><img src="/MatResrv/img/chinese.png" alt="" class="select_img"></div><p class="select_txt">중식</p></li>
                <li class="select_item"><div class="select_img_wrap"><img src="/MatResrv/img/japanese.png" alt="" class="select_img"></div><p class="select_txt">일식</p></li>
                <li class="select_item"><div class="select_img_wrap"><img src="/MatResrv/img/western.png" alt="" class="select_img"></div><p class="select_txt">양식</p></li>
                <li class="select_item"><div class="select_img_wrap"><img src="/MatResrv/img/asian.png" alt="" class="select_img"></div><p class="select_txt">아시아</p></li>
                <li class="select_item"><div class="select_img_wrap"><img src="/MatResrv/img/cafe.png" alt="" class="select_img"></div><p class="select_txt">카페</p></li>
            </ul>
        </div>
        <hr>
        <h1 id="rec_title">오늘의 추천</h1>
        <h3 id="rec_subtitle">(페이지명)이 추천하는 오늘의 메뉴를 만나보세요</h3>
        <div id="rec_wrap">
            <ul id="rec">
                <!-- 테스트용, 나중에는 전부 지울 생각입니다. -->
                <li class="rec_item">
                    <div>
                        <div class="item_img_wrap"><img src="/MatResrv/img/testImg2.png" alt="" class="item_img"></div>
                        <p class="item_txt">고도식 마포점</p>
                        <div class="add_wrap">
                            <img src="/MatResrv/img/star.png" alt="" class="star">
                            <p class="score">4.2</p>
                            <p class="add">육류, 고기요리, 마포</p>
                        </div>
                    </div>
                </li>
                <li class="rec_item">
                    <div>
                        <div class="item_img_wrap"><img src="/MatResrv/img/testImg2.png" alt="" class="item_img"></div>
                        <p class="item_txt">고도식 마포점</p>
                        <div class="add_wrap">
                            <img src="../img/star.png" alt="" class="star">
                            <p class="score">4.2</p>
                            <p class="add">육류, 고기요리, 마포</p>
                        </div>
                    </div>
                </li>
                <li class="rec_item">
                    <div>
                        <div class="item_img_wrap"><img src="/MatResrv/img/testImg2.png" alt="" class="item_img"></div>
                        <p class="item_txt">고도식 마포점</p>
                        <div class="add_wrap">
                            <img src="../img/star.png" alt="" class="star">
                            <p class="score">4.2</p>
                            <p class="add">육류, 고기요리, 마포</p>
                        </div>
                    </div>
                </li>
                <li class="rec_item">
                    <div>
                        <div class="item_img_wrap"><img src="/MatResrv/img/testImg2.png" alt="" class="item_img"></div>
                        <p class="item_txt">고도식 마포점</p>
                        <div class="add_wrap">
                            <img src="../img/star.png" alt="" class="star">
                            <p class="score">4.2</p>
                            <p class="add">육류, 고기요리, 마포</p>
                        </div>
                    </div>
                </li>
                <li class="rec_item">
                    <div>
                        <div class="item_img_wrap"><img src="/MatResrv/img/testImg2.png" alt="" class="item_img"></div>
                        <p class="item_txt">고도식 마포점</p>
                        <div class="add_wrap">
                            <img src="../img/star.png" alt="" class="star">
                            <p class="score">4.2</p>
                            <p class="add">육류, 고기요리, 마포</p>
                        </div>
                    </div>
                </li>
            </ul>
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
