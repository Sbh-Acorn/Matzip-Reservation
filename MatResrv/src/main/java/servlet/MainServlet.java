package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Customer;
@WebServlet("/main")
public class MainServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 세션에서 로그인된 사용자 정보 확인
        HttpSession session = req.getSession(false); // false로 설정하여 기존 세션이 없으면 null을 반환
        Customer loggedInCustomer = (Customer) (session != null ? session.getAttribute("loggedInCustomer") : null);

        // 로그인된 사용자 정보를 요청 속성에 설정
        req.setAttribute("loggedInCustomer", loggedInCustomer);

        // 메인 페이지로 포워딩
        req.getRequestDispatcher("/WEB-INF/views/main.jsp").forward(req, resp);
    }
}