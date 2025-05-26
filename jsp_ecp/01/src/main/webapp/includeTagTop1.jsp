<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	String name = request.getParameter("name");
%>
</head>
<body>
	<p>include ActionTag의 Top입니다.</p>
	<b><%=name %>!!</b>
	<p>중간에 includereq01.jsp파일을 거쳐서 온다.</p>
</body>
</html>