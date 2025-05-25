<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/reset.css">
<link rel="stylesheet" href="./css/main.css">
<title>if문 받기</title>
</head>
<%!
	String msg;
%>
<%
	String name = request.getParameter("name");
	String color = request.getParameter("color");
	
	if(color.equals("red")){
		msg = "빨강색";
	} else if (color.equals("blue")){
		msg = "파랑색";
	} else if (color.equals("yellow")){
		msg = "노랑색";
	} else {
		color = "white";
		msg = "기타색";
	}
%>
<body bgcolor=<%=color %>>
	<b><%=name %>님</b>이 좋아하는 색은 <b><%=msg %></b>입니다.
</body>
</html>