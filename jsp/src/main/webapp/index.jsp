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
	<h1>Hellow</h1>
	<%=num %>
	<p>요청방식: <%= request.getMethod() %></p>
	
</body>
</html>