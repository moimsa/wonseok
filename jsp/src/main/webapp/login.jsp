<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>로그인</title>
    <link rel="stylesheet" href="./css/reset.css">
	<link rel="stylesheet" href="./css/main.css">
</head>
<body>
    <h2>로그인</h2>
    <form action="loginAction.jsp" method="post">
        아이디: <input type="text" name="userid" /><br/>
        비밀번호: <input type="password" name="password" /><br/>
        <input type="submit" value="로그인" />
    </form>
    <a href="signup.jsp">회원가입</a>
</body>
</html>
