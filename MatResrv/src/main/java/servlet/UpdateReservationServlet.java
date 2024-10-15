package servlet;

import dao.ReservationDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/update-reservation")
public class UpdateReservationServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        // 파라미터로부터 예약 번호와 업데이트할 상태 값(resCheck)을 받아옴
        String resNo = req.getParameter("resNo");
        String resCheck = req.getParameter("resCheck");

        ReservationDAO reservationDAO = new ReservationDAO();
        try {
            // 예약 상태 업데이트
            reservationDAO.updateReservationStatus(resNo, resCheck);

            // 업데이트 후 다시 storepage 서블릿으로 리디렉트
            resp.sendRedirect(req.getContextPath() + "/storepage");

        } catch (SQLException e) {
            e.printStackTrace();
            throw new ServletException("Database error during reservation status update.");
        }
    }
}
