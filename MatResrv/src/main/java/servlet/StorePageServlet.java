package servlet;

import dao.ReservationDAO;
import model.Owner;
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

@WebServlet("/storepage")
public class StorePageServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        Owner loggedInOwner = (Owner) session.getAttribute("loggedInOwner");

        if (loggedInOwner == null) {
            // 로그인되지 않은 경우 로그인 페이지로 리디렉트
            resp.sendRedirect(req.getContextPath() + "/store-login");
            return;
        }

        // 가게 이름으로 예약 내역 가져오기
        String storeName = loggedInOwner.getStoreName();
        ReservationDAO reservationDAO = new ReservationDAO();

        try {
            List<Reservation> reservations = reservationDAO.getReservationsByStore(storeName);
            req.setAttribute("reservations", reservations);

            // JSP로 포워딩
            req.getRequestDispatcher("/WEB-INF/views/storepage.jsp").forward(req, resp);

        } catch (SQLException e) {
            e.printStackTrace();
            throw new ServletException("Error retrieving reservations for the store", e);
        }
    }
}
