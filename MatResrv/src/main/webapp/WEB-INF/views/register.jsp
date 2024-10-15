<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
    <link rel="stylesheet" href="/MatResrv/css/register.css">
    <link rel="stylesheet" href="/MatResrv/css/font.css">
    <script defer src="/MatResrv/js/register.js"></script>
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
            <h2 id="title">회원가입</h2>
            <form action="${pageContext.request.contextPath}/register" method="post">
                <div id="name_wrap">
                    <label for="name">이름</label>
                    <br>
                    <input type="text" id="name" name="cudName" maxlength="10" required>
                </div>
                <div id="phone_wrap">
                    <label for="phone">전화번호</label>
                    <br>
                    <input type="text" id="phone" name="cusPhone" maxlength="10" required>
                </div>
                <div id="id_wrap">
                    <label for="name">아이디</label>
                    <br>
                    <input type="text" id="id" name="cusId" maxlength="10" required>
                </div>
                <div id="pw_wrap">
                    <label for="pw">비밀번호</label>
                    <br>
                    <input type="text" id="pw" name="cusPw" maxlength="10" required>
                </div>
                <div id="check_wrap">
                    <label for="check">비밀번호 확인</label>
                    <br>
                    <input type="text" id="check" name="cusCheck" maxlength="10" required>
                </div>
                <button id="register">회원가입</button>
            </form>
        </div>
    </main>
<%--     <form action="${pageContext.request.contextPath}/register" method="post">
        <label for="cusId">아이디:</label>
        <input type="text" id="cusId" name="cusId" required><br><br>

        <label for="cusPw">비밀번호:</label>
        <input type="password" id="cusPw" name="cusPw" required><br><br>

        <label for="cusName">이름:</label>
        <input type="text" id="cusName" name="cusName" required><br><br>

        <label for="cusPhone">전화번호:</label>
        <input type="text" id="cusPhone" name="cusPhone" required><br><br>

        <input type="submit" value="회원가입">
    </form>

    <!-- 오류 메시지 출력 -->
    <c:if test="${not empty errorMessage}">
        <p style="color:red;">${errorMessage}</p>
    </c:if> --%>
</body>
</html>
