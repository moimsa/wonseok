<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/reset.css">
<link rel="stylesheet" href="./css/main.css">
<title>jsp | 이클립스</title>
</head>
<body>
<%
	String strHello = "안녕??";
	String name = team + "Fighting!!";
	java.util.Date date = new java.util.Date();
	int hour = date.getHours();
	int pmHour = hour - 12;
	int amHour = hour;
%>
<%!
	String team = "정원석,";
%>
	<div id="AllWrap">
		<div class="container">
			<div class="container__inner">
				<h1><%=strHello %></h1>
				<p><%=name %></p>
				<p><%=date %></p>
				<p><%=(hour < 12)? "오전" : "오후" %></p>
				<p><%=(hour < 12)? "오전 " + amHour : "오후 " + pmHour %></p>
				<a href="ifres.jsp">IF문 시작</a>
			</div>
		</div>
	</div>
</body>
</html>