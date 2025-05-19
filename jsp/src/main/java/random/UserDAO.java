package random;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	//	실제로 DB에 접속하게 하는 부분
	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql//localhost:3306/bbs";
			String dbID = "root";
			String dbPassword = "dnjstjr12@";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String uid, String password) {
		String SQL = "SELECT password FROM LoginServlet WHRER uid = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, uid);
			rs = pstmt.executeQuery();
			if (rs.next()) {				
				if (rs.getString(1).equals(password)) {
					return 1; // 로그인 성공
				}
				else {
					return 0; // 비밀번호 불일치
				}
			}
			return -1; // 아이디가 없음
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2;
	}

}
