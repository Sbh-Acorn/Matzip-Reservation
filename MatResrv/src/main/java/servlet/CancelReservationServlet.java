package servlet;

import dao.ReservationDAO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/cancel-reservation")
public class CancelReservationServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String resNo = req.getParameter("resNo");
        
        if (resNo == null || resNo.isEmpty()) {
            req.setAttribute("errorMessage", "예약 취소 중 오류가 발생했습니다.");
            req.getRequestDispatcher("/mypage").forward(req, resp);
            return;
        }

        try {
            ReservationDAO reservationDAO = new ReservationDAO();
            reservationDAO.deleteReservation(resNo);
            resp.sendRedirect(req.getContextPath() + "/mypage");
        } catch (SQLException e) {
            e.printStackTrace();
            req.setAttribute("errorMessage", "예약 취소 중 오류가 발생했습니다.");
            req.getRequestDispatcher("/mypage").forward(req, resp);
        }
    }
}
