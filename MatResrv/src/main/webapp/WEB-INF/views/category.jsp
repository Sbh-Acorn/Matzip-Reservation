<%@page import="model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <script>
	    function changeRegion(region) {
	        // 선택한 지역을 서버로 전송
	        var category = "${param.category}";
	        window.location.href = "${pageContext.request.contextPath}/category?region=" + encodeURIComponent(region) + "&category=" + encodeURIComponent(category);
	    }
    </script>
</head>
<body>
<header>
    <!-- 로고 -->
    <a href="${pageContext.request.contextPath}/main">
        <img src="/MatResrv/img/logo.png" alt="" id="logo">
    </a>
    <!-- 드롭다운 메뉴 -->
    <div id="dropdown_wrap">
        <div id="selected_box" class="item">
            <p id="selected">${param.region != null ? param.region : "서울 북부"}</p>
            <img src="/MatResrv/img/down.svg" alt="" id="down_img">
        </div>
        <!-- display : none 처리된 dropdown 리스트 -->
	    <ul id="dropdown">
	        <li class="list" onclick="changeRegion('서울 북부')">
	            <div class="item items">서울 북부</div>
	        </li>
	        <li class="list" onclick="changeRegion('서울 남부')">
	            <div class="item items">서울 남부</div>
	        </li>
	        <li class="list" onclick="changeRegion('경기 북부')">
	            <div class="item items">경기 북부</div>
	        </li>
	        <li class="list" onclick="changeRegion('경기 남부')">
	            <div class="item items">경기 남부</div>
	        </li>
	    </ul>
    </div>

    <!-- 페이지명 설정부분 -->
    <h1 id="title">Matzip category</h1>
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
		            <li class="select_item ${param.category == '한식' ? 'selected' : ''}">
		                <a href="${pageContext.request.contextPath}/category?region=${param.region}&category=한식">
		                   	<div class="select_img_wrap"><img src="/MatResrv/img/korean.png" alt="" class="select_img"></div>
			                <p class="select_txt">한식</p>
		                </a>
		            </li>
		            <li class="select_item ${param.category == '중식' ? 'selected' : ''}">
		                <a href="${pageContext.request.contextPath}/category?region=${param.region}&category=중식">
		                    <div class="select_img_wrap"><img src="/MatResrv/img/chinese.png" alt="" class="select_img"></div>
			                <p class="select_txt">중식</p>
		                </a>
		            </li>
		            <li class="select_item ${param.category == '일식' ? 'selected' : ''}">
		                <a href="${pageContext.request.contextPath}/category?region=${param.region}&category=일식">
		                    <div class="select_img_wrap"><img src="/MatResrv/img/japanese.png" alt="" class="select_img"></div>
			                <p class="select_txt">일식</p>
		                </a>
		            </li>
		            <li class="select_item ${param.category == '양식' ? 'selected' : ''}">
		                <a href="${pageContext.request.contextPath}/category?region=${param.region}&category=양식">
		                    <div class="select_img_wrap"><img src="/MatResrv/img/western.png" alt="" class="select_img"></div>
			                <p class="select_txt">양식</p>
		                </a>
		            </li>
		            <li class="select_item ${param.category == '아시아' ? 'selected' : ''}">
		                <a href="${pageContext.request.contextPath}/category?region=${param.region}&category=아시아">
		                    <div class="select_img_wrap"><img src="/MatResrv/img/asian.png" alt="" class="select_img"></div>
		                	<p class="select_txt">아시아</p>
		                </a>
		            </li>
		            <li class="select_item ${param.category == '카페' ? 'selected' : ''}">
		                <a href="${pageContext.request.contextPath}/category?region=${param.region}&category=카페">
		                    <div class="select_img_wrap"><img src="/MatResrv/img/cafe.png" alt="" class="select_img"></div>
			                <p class="select_txt">카페</p>
		                </a>
		            </li>
		        </ul>
		    </div>
        <hr>
        <h2>${param.region} 지역의 ${param.category} 음식점</h2>
	    <div id="rec_wrap">
	        <ul id="rec">
	            <c:forEach var="store" items="${stores}">
	                <li class="rec_item">
	                    <div>
	                        <div class="item_img_wrap">
	                             <a href="${pageContext.request.contextPath}/reserve?stName=${store.stName}">
                            		<img src="${store.imgUrl}" alt="${store.stName}" class="item_img">
                       			 </a>
	                        </div>
	                        <p class="item_txt">${store.stName}</p>
	                        <div class="add_wrap">
	                            <img src="/MatResrv/img/star.png" alt="별점" class="star">
	                            <p class="score">${store.stRate}</p>
	                            <p class="add">${store.menuCategory}, ${store.stAddress}</p>
	                        </div>
	                    </div>
	                </li>
	            </c:forEach>
	        </ul>
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
