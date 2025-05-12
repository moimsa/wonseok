<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>로그인</title>
</head>
<body>
    <h2>로그인</h2>
    <form action="login" method="post">
        아이디: <input type="text" name="userid" /><br/>
        비밀번호: <input type="password" name="password" /><br/>
        <input type="submit" value="로그인" />
    </form>
    <%
        String error = request.getParameter("error");
        if ("1".equals(error)) {
    %>
        <p style="color:red;">아이디 또는 비밀번호가 올바르지 않습니다.</p>
    <%
        }
    %>
</body>
</html>
