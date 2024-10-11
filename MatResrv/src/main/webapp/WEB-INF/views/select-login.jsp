<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 선택</title>
</head>
<body>
    <h2>로그인 선택</h2>

    <!-- 일반 사용자 로그인 버튼 -->
    <form action="${pageContext.request.contextPath}/cus-login.jsp" method="get">
        <input type="submit" value="일반 사용자 로그인">
    </form>

    <!-- 가게 로그인 버튼 -->
    <form action="${pageContext.request.contextPath}/store-login.jsp" method="get">
        <input type="submit" value="가게 로그인">
    </form>
</body>
</html>
