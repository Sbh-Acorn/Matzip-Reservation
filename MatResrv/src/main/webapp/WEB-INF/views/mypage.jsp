<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="model.Customer"%>
<%@ page session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>마이페이지</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypage.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
    <script defer src="${pageContext.request.contextPath}/js/mypage.js"></script>
</head>
<body>
    <header>
	    <!-- 로고 -->
	    <a href="${pageContext.request.contextPath}/main">
	        <img src="/MatResrv/img/logo.png" alt="" id="logo">
	    </a>
	
	    <!-- 페이지명 설정부분 -->
	    <h1 id="title">페이지명</h1>
	    <!-- 프로필 부분 -->
	    
	    <div id="profile_wrap">
			<div id="profile_img_wrap">
			    <%
			    Customer loggedInCustomer = (Customer) session.getAttribute("loggedInCustomer");
			    String profileImage;
			    String profileClickUrl;
			    
			    if (loggedInCustomer != null) {
			        profileImage = "/MatResrv/img/people2.svg"; // 로그인된 경우
			        profileClickUrl = request.getContextPath() + "/mypage"; // 마이페이지로 이동
			    } else {
			        profileImage = "/MatResrv/img/profile.svg"; // 비로그인 상태일 때 기본 이미지
			        profileClickUrl = request.getContextPath() + "/login-select"; // 로그인 선택 페이지로 이동
			    }
			    %>
			    <img src="<%= profileImage %>" alt="프로필 이미지" id="profile"
			         onclick="window.location.href='<%= profileClickUrl %>'">
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
	    </div>
	    <!-- 로그아웃 버튼 -->
	    <% if (loggedInCustomer != null) { %>
	        <form action="${pageContext.request.contextPath}/logout" method="post" style="display:inline;">
	            <button type="submit" id="logout">로그아웃</button>
	        </form>
	    <% } %>
    </header>
    

    <main>
        <div id="ul_wrap">
            <h2 id="my_title">마이페이지</h2>
            <ul>
                <li class="select_list">
                    <div class="select_item">
                        <p class="select_txt">내 정보</p>
                        <img src="${pageContext.request.contextPath}/img/right.svg" alt="" class="right">
                    </div>
                </li>
                <li class="select_list">
                    <div class="select_item">
                        <p class="select_txt">예약 확인</p>
                        <img src="${pageContext.request.contextPath}/img/right.svg" alt="" class="right">
                    </div>
                </li>
                <li class="select_list">
                    <div class="select_item">
                        <p class="select_txt">예약 기록</p>
                        <img src="${pageContext.request.contextPath}/img/right.svg" alt="" class="right">
                    </div>
                </li>
            </ul>
        </div>

        <!-- 내 정보 -->
<div id="my_info">
    <h2 id="info_title">내 정보</h2>
    <hr class="hr1">
    <form id="customerInfoForm" action="${pageContext.request.contextPath}/mypage-update" method="post">
        <div id="wrap_wrap">
            <div id="id_wrap">
                <p id="id_tag" class="tag">아이디</p>
                <input type="text" value="${customerInfo.cusId}" name="cusId" class="info_input" readonly>
            </div>
            <div id="name_wrap">
                <p id="name_tag" class="tag">이름</p>
                <input type="text" value="${customerInfo.cusName}" name="cusName" class="info_input" readonly>
            </div>
            <div id="phone_wrap">
                <p id="phone_tag" class="tag">전화번호</p>
                <input type="text" value="${customerInfo.cusPhone}" name="cusPhone" class="info_input">
            </div>
            <div id="pw_wrap">
                <p id="pw_tag" class="tag">비밀번호</p>
                <input type="password" name="cusPw" placeholder="변경할 비밀번호를 입력하세요" class="info_input">
            </div>
        </div>
        <div id="btn_wrap">
            <button type="submit" id="saveBtn">수정하기</button>
        </div>
    </form>
</div>


        <!-- 예약 확인 -->
	  <div id="my_check">
	    <h2 id="check_title">예약 확인</h2>
	    <hr class="hr1">
	    <c:if test="${not empty reservations}">
	        <c:forEach var="reservation" items="${reservations}">
	            <div class="content_wrap_wrap">
	                <div class="content_wrap">
	                    <div class="content">
	                        <h2 class="content_title">${reservation.resStore}</h2>
	                        <hr class="hr3">
	                        <p class="content_day">${reservation.resDate} ${reservation.resTime}</p>
	                    </div>
	                </div>
	                <div class="content_btn_wrap">
	                    <!-- 예약 취소 폼 -->
	                    <form action="${pageContext.request.contextPath}/cancel-reservation" method="post">
	                        <input type="hidden" name="resNo" value="${reservation.resNo}">
	                        <button type="submit" class="cancel">예약 취소</button>
	                    </form>
	                </div>
	            </div>
	        </c:forEach>
	    </c:if>
	</div>

        <!-- 예약 기록 -->
	<div id="my_history">
	    <h2 id="history_title">예약 기록</h2>
	    <hr class="hr1">
	    <c:if test="${not empty reservations}">
	        <ul>
	            <c:forEach var="reservation" items="${reservations}">
	                <li class="history_list">
	                    <div class="history_wrap" style="
	                        ${reservation.resCheck == null || reservation.resCheck == '?' ? 'color: grey;' :
	                           reservation.resCheck == 'Y' ? 'color: blue;' : 
	                           'color: red;'}">
	                        <p class="history_title">${reservation.resStore}</p>
	                        <p class="history_day">${reservation.resDate}</p>
	                    </div>
	                </li>
	            </c:forEach>
	        </ul>
	    </c:if>
	</div>
    </main>

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
