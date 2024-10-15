<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>가게 예약 기록</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypage.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css">
    <script defer src="${pageContext.request.contextPath}/js/mypage.js"></script>
    <style>
        .status-miconfirm { color: grey; }
        .status-participate { color: blue; }
        .status-noparticipate { color: red; }
        .status-select { padding: 5px; }
    </style>
</head>
<body>
    <header>
        <a href="${pageContext.request.contextPath}/main">
            <img src="/MatResrv/img/logo.png" alt="로고" id="logo">
        </a>
        <h1 id="title">가게 예약 기록</h1>
        <div id="profile_wrap">
            <div id="profile_img_wrap">
                <img src="/MatResrv/img/people2.svg" alt="프로필 이미지" id="profile">
            </div>
            <div id="profile_info">
                <p id="nickname">${loggedInOwner.storeName}</p>
            </div>
            <form action="${pageContext.request.contextPath}/logout" method="post" style="display:inline;">
                <button type="submit" id="logout">로그아웃</button>
            </form>
        </div>
    </header>

    <main>
        <h2 id="rec_title">예약 확인</h2>
        <hr class="hr1">
        <c:if test="${not empty reservations}">
            <c:forEach var="reservation" items="${reservations}">
                <div class="content_wrap_wrap">
                    <div class="content_wrap">
                        <div class="content">
                            <h2 class="content_title">${reservation.resName}님의 예약</h2>
                            <hr class="hr3">
                            <p class="content_day">예약 날짜: ${reservation.resDate} 시간: ${reservation.resTime}</p>
                            <p class="content_status">
                                상태: 
                                <span class="
                                    ${reservation.resCheck == null || reservation.resCheck == '?' ? 'status-miconfirm' : 
                                       reservation.resCheck == 'Y' ? 'status-participate' : 
                                       'status-noparticipate'}">
                                    ${reservation.resCheck == null || reservation.resCheck == '?' ? '미확정' : 
                                       reservation.resCheck == 'Y' ? '참가' : 
                                       '불참'}
                                </span>
                            </p>
                        </div>
                    </div>
                    <div class="content_btn_wrap">
						<form action="${pageContext.request.contextPath}/update-reservation" method="post">
						    <input type="hidden" name="resNo" value="${reservation.resNo}">
						    <select name="resCheck" class="status-select">
						        <option value="?" ${reservation.resCheck == null || reservation.resCheck == '?' ? 'selected' : ''}>미확정</option>
						        <option value="Y" ${reservation.resCheck == 'Y' ? 'selected' : ''}>참가</option>
						        <option value="N" ${reservation.resCheck == 'N' ? 'selected' : ''}>불참</option>
						    </select>
						    <button type="submit" class="update">상태 업데이트</button>
						</form>
                    </div>
                </div>
            </c:forEach>
        </c:if>
        <c:if test="${empty reservations}">
            <p>예약 내역이 없습니다.</p>
        </c:if>
    </main>
    <footer>
        <p id="footer_title">(주)페이지</p>
        <p class="footer_txt">대표 : 소병학</p>
        <p class="footer_txt">주소 : 경기도 광주시 오포읍 신현리</p>
        <p class="footer_txt">사업자 등록번호 : 000-00-00000</p>
        <p class="footer_txt">통신판매업 신고번호 : 0000-0000호</p>
        <p class="footer_txt">대표번호 : 010-3016-7609</p>
    </footer>
</body>
</html>
