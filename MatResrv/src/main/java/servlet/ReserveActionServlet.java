package servlet;

import model.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/reserve-action")
public class ReserveActionServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=UTF-8");
    	HttpSession session = req.getSession(false);
        Customer loggedInCustomer = (Customer) (session != null ? session.getAttribute("loggedInCustomer") : null);

        if (loggedInCustomer == null) {
            // 세션에 고객 정보가 없으면 로그인 페이지로 이동
            session.setAttribute("redirectAfterLogin", req.getParameter("storeName")); // 예약 페이지로 돌아가기 위해 가게 이름 저장
            resp.sendRedirect(req.getContextPath() + "/cus-login");
        } else {
            // 로그인된 상태라면 예약 처리 로직 수행
            // 로그인된 상태라면 예약 페이지로 이동해 모달을 띄움
            String storeName = req.getParameter("storeName");
            
            // 예약 페이지로 이동
            req.setAttribute("storeName", storeName);
            req.getRequestDispatcher("/WEB-INF/views/reserve.jsp").forward(req, resp);
        }
    }
}
