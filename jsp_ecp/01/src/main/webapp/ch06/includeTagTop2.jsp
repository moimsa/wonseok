<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	String siteName = request.getParameter("siteName");
%>
</head>
<body>
	<p>include ActionTag의 Top입니다.</p>
	<b><%=siteName %></b>
</body>
</html>