<%@page import="model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 페이지</title>
    <link rel="stylesheet" href="/MatResrv/css/font.css">
    <link rel="stylesheet" href="/MatResrv/css/header.css">
    <link rel="stylesheet" href="/MatResrv/css/reserve.css">
    <link rel="stylesheet" href="/MatResrv/css/modal.css">
    <script defer src="/MatResrv/js/header.js"></script>
    <script defer src="/MatResrv/js/reserve.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
</head>
<body>
<header>
    <a href="${pageContext.request.contextPath}/main">
        <img src="/MatResrv/img/logo.png" alt="" id="logo">
    </a>

    <h1 id="title">페이지명</h1>
    <div id="profile_wrap">
        <div id="profile_img_wrap">
            <%
            Customer loggedInCustomer = (Customer) session.getAttribute("loggedInCustomer");
            String profileImage;
            if (loggedInCustomer != null) {
                profileImage = "/MatResrv/img/people2.svg";
            } else {
                profileImage = "/MatResrv/img/profile.svg";
            }
            %>
            <img src="<%= profileImage %>" alt="" id="profile"
                <% if (loggedInCustomer == null) { %>
                    onclick="window.location.href='<%= request.getContextPath() %>/login-select'"
                <% } %>
            >
        </div>
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
    </div>
    <% if (loggedInCustomer != null) { %>
        <form action="${pageContext.request.contextPath}/logout" method="post" style="display:inline;">
            <button type="submit" id="logout">로그아웃</button>
        </form>
    <% } %>
</header>

<main>
    <div id="content_wrap">
        <img src="${store.imgUrl}" alt="${store.stName}" id="content_img">
        <div id="content">
            <p id="content_category">${store.menuCategory}</p>
            <p id="content_name">${store.stName}</p>
            <div id="content_info">
                <img src="/MatResrv/img/star.png" alt="별점" id="star">
                <p id="score">${store.stRate}</p>
            </div>
            <div id="txt_wrap">
                <img src="/MatResrv/img/message.svg" alt="" id="txt_img">
                <p id="content_txt">${store.stDescription}</p>
            </div>
            <hr>
            <div id="location_wrap">
                <img src="/MatResrv/img/location.svg" alt="" id="location_img">
                <p id="content_location">${store.stAddress}</p>
            </div>

            <!-- 로그인 여부에 따라 모달 창 또는 로그인 페이지 이동 -->
            <form id="reserveForm" action="${pageContext.request.contextPath}/reserve-action" method="post">
                <input type="hidden" name="storeName" value="${store.stName}">
                <button type="button" id="reserve_btn" onclick="checkLoginAndReserve()">예약하기</button>
            </form>
        </div>
     </div>
</main>
<div id="modal" class="modal">
    <div class="modal-content">
        <h2>예약 날짜와 시간을 선택하세요</h2>
        <form id="finalReserveForm" action="${pageContext.request.contextPath}/reserve-action-final" method="post">
            <input type="hidden" name="storeName" value="${store.stName}">
            
            <!-- 예약 날짜 및 시간 선택 -->
            <label for="reserveDateTime">예약 날짜 및 시간</label>
            <input type="text" id="demo" name="reserveDateTime" required>

            <!-- 예약 인원 선택 -->
            <label for="numberOfPp">예약 인원 수</label>
            <input type="number" id="numberOfPp" name="numberOfPp" min="1" required>

            <button type="submit">예약 완료</button>
        </form>
        <button onclick="closeModal()">닫기</button>
    </div>
</div>

<!-- 예약 모달 및 날짜 선택 관련 JS -->
<script src="/MatResrv/js/reserve.js"></script>
<script>
    $(function() {
        $('#demo').daterangepicker({
            "singleDatePicker": true,
            "timePicker": true,
            "timePicker24Hour": true,
            "timePickerIncrement": 30,
            "minDate": moment().add(1, 'days').startOf('day').set({ hour: 9, minute: 0 }), 
            "locale": {
                "format": "YYYY-MM-DD HH:mm"
            }
        });
    });

    function checkLoginAndReserve() {
        var loggedIn = <%= (session.getAttribute("loggedInCustomer") != null) ? "true" : "false" %>;

        if (loggedIn) {
            // 로그인이 되어 있으면 모달을 띄움
            document.getElementById("modal").style.display = "flex";
        } else {
            // 로그인이 안 되어 있으면 로그인 페이지로 리다이렉트
            window.location.href = "<%= request.getContextPath() %>/cus-login";
        }
    }
</script>

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
