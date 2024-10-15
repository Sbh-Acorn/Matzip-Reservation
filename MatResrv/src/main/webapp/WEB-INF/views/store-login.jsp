<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가게 로그인</title>
    <link rel="stylesheet" href="/MatResrv/css/login.css">
    <link rel="stylesheet" href="/MatResrv/css/font.css">
    <script defer src="/MatResrv/js/modal.js"></script>
    <script>
        // 페이지 로드 시 오류 메시지가 있으면 모달을 열기
        window.onload = function() {
            var errorMessage = "<%= request.getAttribute("errorMessage") != null ? request.getAttribute("errorMessage") : "" %>";
            if (errorMessage) {
                document.getElementById('modal').style.display = 'flex';
                document.getElementById('modal-message').innerText = errorMessage;
            }
        };
    </script>
</head>
<body>
    <div id="modal">
        <div class="modal-content">
            <p id="modal-message"></p>
            <button onclick="closeModal()">닫기</button>
        </div>
    </div>
    <main>
        <div id="content_wrap">
            <h2 id="title">페이지 로그인</h2>
            <form action="${pageContext.request.contextPath}/store-login" method="post">
                <div id="id_wrap">
                    <label for="id">
                        가게이름/지역
                    </label>
                    <br>
                    <input type="text" id="id" name="StoreId" placeholder="아이디를 입력해주세요" required>
                </div>
                <div id="pw_wrap">
                    <label for="pw">
                        비밀번호
                    </label>
                    <br>
                    <input type="text" id="pw" name="ownerPw" placeholder="비밀번호를 입력해주세요" required>
                </div>
                <button id="login">로그인</button>
            </form>
            <div id="add_wrap">
                <a href="#" id="find">아이디 / 비밀번호 찾기</a>
            </div>
        </div>
    </main>
    
<%--     <form action="${pageContext.request.contextPath}/store-login" method="post">
        <label for="storeName">가게 이름:</label>
        <input type="text" id="storeName" name="storeName" required><br><br>

        <label for="ownerPw">비밀번호:</label>
        <input type="password" id="ownerPw" name="ownerPw" required><br><br>

        <input type="submit" value="로그인">
    </form>

    <!-- 오류 메시지 출력 -->
    <c:if test="${not empty errorMessage}">
        <p style="color:red;">${errorMessage}</p>
    </c:if> --%>
</body>
</html>
