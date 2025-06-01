<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, java.io.*, java.sql.*" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>DB Connection Test</title>
</head>
<body>
<%
  // 올바른 경로 가져오기
  String configPath = application.getRealPath("/WEB-INF/db.properties");
  Properties props = new Properties();
  try (InputStream input = new FileInputStream(configPath)) {
    props.load(input);
  } catch (Exception e) {
    out.println("설정 파일 오류: " + e.getMessage());
    return;
  }

  String DB_URL = props.getProperty("db.url");
  String DB_USER = props.getProperty("db.user");
  String DB_PASSWORD = props.getProperty("db.password");

  // DB 연결 테스트
  try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
    out.println("DB 연결 성공!");
    conn.close();
  } catch(Exception e) {
    out.println("DB 연결 실패: " + e.getMessage());
  }
%>

</body>
</html>
