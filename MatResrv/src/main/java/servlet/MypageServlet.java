package servlet;

import dao.CustomerDAO;
import dao.ReservationDAO;
import model.Customer;
import model.Reservation;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/mypage")
public class MypageServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        Customer loggedInCustomer = (Customer) (session != null ? session.getAttribute("loggedInCustomer") : null);

        if (loggedInCustomer == null) {
            resp.sendRedirect(req.getContextPath() + "/login-select");
            return;
        }

        CustomerDAO customerDAO = new CustomerDAO();
        ReservationDAO reservationDAO = new ReservationDAO();

        try {
            // 고객의 정보를 가져오기
            Customer customer = customerDAO.getCustomerById(loggedInCustomer.getCusId());
            req.setAttribute("customerInfo", customer);

            // 고객의 예약 확인
            List<Reservation> reservations = reservationDAO.getReservationsByCustomer(loggedInCustomer.getCusName());
            req.setAttribute("reservations", reservations);

        } catch (SQLException e) {
            e.printStackTrace();
            req.setAttribute("errorMessage", "마이페이지 정보를 불러오는 중 오류가 발생했습니다.");
        }

        req.getRequestDispatcher("/WEB-INF/views/mypage.jsp").forward(req, resp);
    }
}
