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
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=UTF-8");
    	req.getRequestDispatcher("/WEB-INF/views/cus-login.jsp").forward(req, resp);
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=UTF-8");
    	String cusId = req.getParameter("cusId");
        String cusPw = req.getParameter("cusPw");

        CustomerDAO customerDAO = new CustomerDAO();
        try {
            Customer customer = customerDAO.getCustomerById(cusId);

            if (customer == null) {
                req.setAttribute("errorMessage", "등록되지 않은 아이디입니다.");
                req.getRequestDispatcher("/WEB-INF/views/cus-login.jsp").forward(req, resp);
            } else {
                if (customer.getCusPw().equals(cusPw)) {
                    HttpSession session = req.getSession();
                    session.setAttribute("loggedInCustomer", customer);

                    String redirectStoreName = (String) session.getAttribute("redirectAfterLogin");
                    if (redirectStoreName != null) {
                        session.removeAttribute("redirectAfterLogin");
                        resp.sendRedirect(req.getContextPath() + "/reserve?stName=" + redirectStoreName);
                    } else {
                        resp.sendRedirect(req.getContextPath() + "/main");
                    }
                } else {
                    req.setAttribute("errorMessage", "비밀번호가 틀렸습니다.");
                    req.getRequestDispatcher("/WEB-INF/views/cus-login.jsp").forward(req, resp);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new ServletException("Database error during login.");
        }
    }
}
