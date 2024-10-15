<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>가게 목록</title>
</head>
<body>
	<h1>가게 목록</h1>
	<table>
		<tr>
			<th>이름</th>
			<th>지역</th>
			<th>카테고리</th>
			<th>주소</th>
			<th>별점</th>
			<th>설명</th>
			<th>상세 보기</th>
		</tr>
		<c:forEach var="store" items="${stores}">
			<tr>
				<td>${store.stName}</td>
				<td>${store.region}</td>
				<td>${store.menuCategory}</td>
				<td>${store.stAddress}</td>
				<td>${store.stRate}</td>
				<td>${store.stDescription}</td>
				<td><a href="store?action=getByName&st_name=${store.stName}">보기</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
