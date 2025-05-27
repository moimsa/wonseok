<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="test" class="ch09.SimpleBean" scope="page" />
<jsp:setProperty name="test" property="message" value="빈을 쉽게 정복하자!" />
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/reset.css">
<link rel="stylesheet" href="./css/main.css">
<title>Insert title here</title>
</head>
<body>
	<h1>간단한 빈 프로그래밍</h1>
	<div>
		Message: <jsp:getProperty name="test" property="message" />
	</div>
</body>
</html>