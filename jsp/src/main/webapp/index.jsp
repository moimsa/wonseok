<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% int num = 9; %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/reset.css">
<title>Insert title here</title>
</head>
<body>
	<form action="./result/result.jsp" method="POST">
		<p>이름 : </p> <input type="text" name="name" />
		<input type="submit" value="전송" />
	</form>
</body>
</html>