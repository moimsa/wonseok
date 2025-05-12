import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    // 임시로 하드코딩한 사용자 정보
    private static final String USER_ID = "testuser";
    private static final String USER_PW = "1234";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userid = request.getParameter("userid");
        String password = request.getParameter("password");

        if (USER_ID.equals(userid) && USER_PW.equals(password)) {
            // 로그인 성공
            HttpSession session = request.getSession();
            session.setAttribute("userid", userid);
            response.sendRedirect("welcome.jsp");
        } else {
            // 로그인 실패
            response.sendRedirect("login.jsp?error=1");
        }
    }
}
