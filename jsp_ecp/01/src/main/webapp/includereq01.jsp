<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/reset.css">
<link rel="stylesheet" href="./css/main.css">
<title>Include Ex Request</title>
</head>
<%
	request.setCharacterEncoding("utf-8");
	String name = "정원석";
%>
<body>
	<jsp:include page="includeTagTop1.jsp" />
</body>
</html>