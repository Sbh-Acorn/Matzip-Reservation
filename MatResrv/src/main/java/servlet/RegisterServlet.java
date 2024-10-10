package servlet;

import dao.CustomerDAO;
import model.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 사용자가 입력한 데이터를 받아옴
        String cusId = req.getParameter("cusId");
        String cusPw = req.getParameter("cusPw");
        String cusName = req.getParameter("cusName");
        String cusPhone = req.getParameter("cusPhone");

        // Customer 객체 생성
        Customer customer = new Customer(cusId, cusPw, cusName, cusPhone);

        // CustomerDAO를 사용하여 데이터베이스에 고객 정보 저장
        CustomerDAO customerDAO = new CustomerDAO();
        try {
            customerDAO.addCustomer(customer);
            // 회원가입 성공 시 로그인 페이지로 리다이렉트
            resp.sendRedirect(req.getContextPath() + "/cus-login.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
            // 데이터베이스 오류 발생 시, 회원가입 페이지로 다시 돌아감
            req.setAttribute("errorMessage", "회원가입 중 오류가 발생했습니다. 다시 시도해주세요.");
            req.getRequestDispatcher("/WEB-INF/views/register.jsp").forward(req, resp);
        }
    }
}
