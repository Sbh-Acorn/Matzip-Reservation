<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가게 로그인</title>
</head>
<body>
    <h2>가게 로그인</h2>
    
    <form action="${pageContext.request.contextPath}/store-login" method="post">
        <label for="storeName">가게 이름:</label>
        <input type="text" id="storeName" name="storeName" required><br><br>

        <label for="ownerPw">비밀번호:</label>
        <input type="password" id="ownerPw" name="ownerPw" required><br><br>

        <input type="submit" value="로그인">
    </form>

    <!-- 오류 메시지 출력 -->
    <c:if test="${not empty errorMessage}">
        <p style="color:red;">${errorMessage}</p>
    </c:if>
</body>
</html>
