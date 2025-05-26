<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	request.setCharacterEncoding("utf-8");
	String siteName = request.getParameter("siteName");
%>
<body>
	<h1>Include Tag Example2</h1>
	<jsp:include page="includeTagTop2.jsp">
		<jsp:param name="siteName" value="jspstudy.com" />
	</jsp:include>
	<p>include ActionTag의 Body입니다.</p>
	<b><%=siteName %></b>
</body>
</html>