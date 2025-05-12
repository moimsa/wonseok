<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>회원가입</title>
</head>
<body>
    <h2>회원가입</h2>
    <form action="registerProcess.jsp" method="post">
        아이디: <input type="text" name="userID" required><br>
        비밀번호: <input type="password" name="userPassword" required><br>
        이름: <input type="text" name="userName" required><br>
        성별: <input type="text" name="userGender"><br>
        이메일: <input type="email" name="userEmail"><br>
        <button type="submit">가입하기</button>
    </form>
</body>
</html>
