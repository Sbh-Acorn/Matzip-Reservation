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

@WebServlet("/mypage-update")
public class MypageUpdateServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        // 수정 가능한 값들만 받기
        String cusId = req.getParameter("cusId");  // cus_id는 수정되지 않음, 그대로 사용
        String cusPhone = req.getParameter("cusPhone");
        String cusPw = req.getParameter("cusPw");

        CustomerDAO customerDAO = new CustomerDAO();

        try {
            // DB에서 현재 고객 정보 불러오기
            Customer updatedCustomer = customerDAO.getCustomerById(cusId);
            updatedCustomer.setCusPhone(cusPhone);
            updatedCustomer.setCusPw(cusPw);

            // DB에 정보 업데이트
            customerDAO.updateCustomer(updatedCustomer);

            // 세션 업데이트
            req.getSession().setAttribute("loggedInCustomer", updatedCustomer);

            // 마이페이지로 리디렉트
            resp.sendRedirect(req.getContextPath() + "/mypage");

        } catch (SQLException e) {
            e.printStackTrace();
            req.setAttribute("errorMessage", "정보 수정 중 오류가 발생했습니다.");
            req.getRequestDispatcher("/WEB-INF/views/mypage.jsp").forward(req, resp);
        }
    }
}
