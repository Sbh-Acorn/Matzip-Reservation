<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
    <h2>회원가입</h2>
    
    <form action="${pageContext.request.contextPath}/register" method="post">
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
    </c:if>
</body>
</html>
