<%@ page import="java.util.*, java.io.*, java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  // 로그아웃 처리
  if ("logout".equals(request.getParameter("action"))) {
    session.invalidate();
    response.sendRedirect("../index.jsp");
    return;
  }
%>
<html>
<head>
  <title>로그인</title>
  <link rel="stylesheet" href="../css/reset.css" />
  <link rel="stylesheet" href="../css/login.css">
</head>
<body>
<%
  String message = "";
  if ("POST".equalsIgnoreCase(request.getMethod())) {
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // db.properties 파일 읽기
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

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    try {
      Class.forName("com.mysql.cj.jdbc.Driver");
      conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

      String sql = "SELECT * FROM user WHERE username = ? AND password = ?";
      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, username);
      pstmt.setString(2, password);
      rs = pstmt.executeQuery();

      if (rs.next()) {
        // 세션에 사용자 정보 저장 (30분 유지)
        session.setAttribute("username", username);
        session.setMaxInactiveInterval(1800);
        response.sendRedirect("../index.jsp");
      } else {
        message = "아이디 또는 비밀번호가 잘못되었습니다";
      }
    } catch(Exception e) {
      message = "로그인 처리 중 오류 발생: " + e.getMessage();
    } finally {
      try { if(rs != null) rs.close(); } catch(Exception e) {}
      try { if(pstmt != null) pstmt.close(); } catch(Exception e) {}
      try { if(conn != null) conn.close(); } catch(Exception e) {}
    }
  }
%>

<div>
  <h2>로그인</h2>
  <form method="post">
    <label>아이디: <input type="text" name="username" required></label>
    <label>비밀번호: <input type="password" name="password" required></label>
    <button type="submit">로그인</button>
  </form>
  <p style="color:red;"><%= message %></p>
  <p class="signup__btn"><a href="../ch11/signup.jsp">회원가입 하러 가기</a></p>
</div>
</body>
</html>
