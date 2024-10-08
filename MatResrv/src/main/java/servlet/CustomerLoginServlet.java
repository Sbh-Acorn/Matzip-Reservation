package servlet;

import dao.CustomerDAO;
import model.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/cus-login")
public class CustomerLoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 사용자가 입력한 ID와 비밀번호를 받아옴
        String cusId = req.getParameter("cusId");
        String cusPw = req.getParameter("cusPw");

        CustomerDAO customerDAO = new CustomerDAO();
        try {
            // 입력한 ID로 데이터베이스에서 고객 정보를 조회
            Customer customer = customerDAO.getCustomerById(cusId);

            if (customer != null && customer.getCusPw().equals(cusPw)) {
                // 비밀번호가 일치하면 로그인 성공, 세션에 사용자 정보 저장
                HttpSession session = req.getSession();
                session.setAttribute("loggedInCustomer", customer);

                // 로그인 성공 후 메인 페이지로 리다이렉트
                resp.sendRedirect(req.getContextPath() + "/main");
            } else {
                // 비밀번호가 일치하지 않거나 사용자가 없을 경우, 로그인 실패
                req.setAttribute("errorMessage", "Invalid ID or password.");
                req.getRequestDispatcher("/WEB-INF/views/customer-login.jsp").forward(req, resp);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new ServletException("Database error during login.");
        }
    }
}
