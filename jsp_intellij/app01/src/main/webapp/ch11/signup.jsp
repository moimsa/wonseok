<%@ page import="java.util.*, java.io.*, java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원가입</title>
    <link rel="stylesheet" href="../css/reset.css" />
    <link rel="stylesheet" href="../css/signup.css" />
</head>
<body>
<%
    // message 변수를 최상단에서 초기화
    String message = "";

    // db.properties 파일 경로 가져오기
    String configPath = application.getRealPath("/WEB-INF/db.properties");
    Properties props = new Properties();
    try (InputStream input = new FileInputStream(configPath)) {
        props.load(input);
    } catch (Exception e) {
        message = "설정 파일 오류: " + e.getMessage();
    }

    String DB_URL = props.getProperty("db.url");
    String DB_USER = props.getProperty("db.user");
    String DB_PASSWORD = props.getProperty("db.password");

    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");

        if (username != null && !username.isEmpty() &&
                password != null && !password.isEmpty() &&
                email != null && !email.isEmpty()) {

            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

                // 중복 체크
                String checkSql = "SELECT username FROM user WHERE username = ? OR email = ?";
                pstmt = conn.prepareStatement(checkSql);
                pstmt.setString(1, username);
                pstmt.setString(2, email);
                rs = pstmt.executeQuery();

                if (rs.next()) {
                    message = "이미 사용 중인 아이디/이메일입니다";
                } else {
                    String insertSql = "INSERT INTO user (username, password, email) VALUES (?, ?, ?)";
                    pstmt.close(); // 이전 pstmt 닫기
                    pstmt = conn.prepareStatement(insertSql);
                    pstmt.setString(1, username);
                    pstmt.setString(2, password);
                    pstmt.setString(3, email);
                    int result = pstmt.executeUpdate();
                    if (result > 0) {
                        message = "회원가입 성공!";
                    } else {
                        message = "회원가입 실패!";
                    }
                }
            } catch (SQLException e) {
                if (e.getErrorCode() == 1062) {
                    message = "이미 존재하는 아이디/이메일입니다";
                } else {
                    message = "시스템 오류: " + e.getMessage();
                }
            } catch (Exception e) {
                message = "에러: " + e.getMessage();
            } finally {
                try { if (rs != null) rs.close(); } catch(Exception e) {}
                try { if (pstmt != null) pstmt.close(); } catch(Exception e) {}
                try { if (conn != null) conn.close(); } catch(Exception e) {}
            }
        } else {
            message = "모든 필드를 입력해주세요";
        }
    }
%>
<div class="signup-container">
    <h2>회원가입</h2>

    <div class="message <%= message.contains("성공") ? "success" : "error" %>">
        <%= message != null ? message : "" %>
    </div>

    <form method="post" onsubmit="return validateForm()">
        <div class="form-group">
            <label>아이디</label>
            <input type="text" name="username" required>
        </div>

        <div class="form-group">
            <label>비밀번호</label>
            <input type="password" name="password" required>
        </div>

        <div class="form-group">
            <label>이메일</label>
            <input type="email" name="email" required>
        </div>

        <button type="submit">가입하기</button>
    </form>

    <div class="login-link">
        <a href="../login/login.jsp">로그인 하러 가기</a>
    </div>
</div>

<script>
    function validateForm() {
        const email = document.querySelector("input[name='email']").value;
        if(!email.includes('@')) {
            alert("올바른 이메일 형식을 입력해주세요");
            return false;
        }
        return true;
    }
</script>
</body>
</html>
