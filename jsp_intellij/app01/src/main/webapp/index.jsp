<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String username = (String) session.getAttribute("username");
%>
<!DOCTYPE html>
<html>
<head>
    <title>MOIMSA</title>
    <link rel="stylesheet" href="./css/reset.css" />
    <link rel="stylesheet" href="./css/index.css" />
</head>
<body>
<%
    if(username == null) {
        // 로그인하지 않은 경우: 기존 화면
%>
<h1>
    <a href="index.jsp">환영합니다! 고객님.</a>
</h1>
<ul>
<%--    <li><a href="./ch09/member.jsp">ch09 / 회원가입</a></li>--%>
    <li><a href="./ch11/connectdb.jsp">ch11 / DB연결</a></li>
    <li><a href="./login/login.jsp">login / 로그인</a></li>
</ul>
<%
} else {
    // 로그인한 경우: 환영 메시지와 로그아웃 링크
%>
<h1><a href="index.jsp"><%= username %>님, 환영합니다!</a></h1>
<p class="logout__btn"><a href="./login/login.jsp?action=logout">로그아웃</a></p>
<%
    }
%>
</body>
</html>
