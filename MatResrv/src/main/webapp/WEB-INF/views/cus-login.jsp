<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반 사용자 로그인</title>
</head>
<body>
    <h2>일반 사용자 로그인</h2>
    <form action="${pageContext.request.contextPath}/cus-login" method="post">
        <label for="cusId">아이디:</label>
        <input type="text" id="cusId" name="cusId" required><br><br>

        <label for="cusPw">비밀번호:</label>
        <input type="password" id="cusPw" name="cusPw" required><br><br>

        <input type="submit" value="로그인">
    </form>

    <!-- 오류 메시지 출력 -->
    <c:if test="${not empty errorMessage}">
        <p style="color:red;">${errorMessage}</p>
    </c:if>
</body>
</html>
