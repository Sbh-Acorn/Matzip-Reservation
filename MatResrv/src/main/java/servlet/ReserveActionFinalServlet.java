package servlet;

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

@WebServlet("/reserve-action-final")
public class ReserveActionFinalServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        Customer loggedInCustomer = (Customer) (session != null ? session.getAttribute("loggedInCustomer") : null);

        if (loggedInCustomer == null) {
            // 로그인하지 않은 경우 로그인 페이지로 리다이렉트
            resp.sendRedirect(req.getContextPath() + "/cus-login");
            return;
        }

        // 사용자가 선택한 예약 정보를 가져옴
        String storeName = req.getParameter("storeName");
        storeName = new String(storeName.getBytes("ISO-8859-1"), "UTF-8"); // 인코딩 변환 (필요한 경우)
        String reserveDateTime = req.getParameter("reserveDateTime");
        String numberOfPp = req.getParameter("numberOfPp"); // 예약 인원 수 추가 가능
        String resSuccess = "true"; // 예약 성공으로 설정
        String resCheck = "?";  // 예약 체크 여부 (아직 방문하지 않았으므로 false)

        if (reserveDateTime == null || reserveDateTime.isEmpty()) {
            // 날짜와 시간이 입력되지 않았다면 다시 예약 페이지로 리다이렉트
            req.setAttribute("errorMessage", "예약 날짜 및 시간을 선택하세요.");
            req.getRequestDispatcher("/reserve?stName=" + storeName).forward(req, resp);
            return;
        }

        // 예약 정보를 Reservation 객체에 담아 DB에 저장
        ReservationDAO reservationDAO = new ReservationDAO();
        System.out.println("Store Name: " + storeName);
        System.out.println("Customer Name: " + loggedInCustomer.getCusName());
        Reservation reservation = new Reservation(null, storeName, loggedInCustomer.getCusName(), reserveDateTime.split(" ")[0], reserveDateTime.split(" ")[1], numberOfPp, resSuccess, resCheck);

        try {
            reservationDAO.addReservation(reservation);
            // 예약이 완료된 후 메인 페이지로 리디렉트하면서 자바스크립트로 알림을 띄움
            req.setAttribute("successMessage", "예약이 성공적으로 완료되었습니다!");
            req.getRequestDispatcher("/WEB-INF/views/main.jsp").forward(req, resp);
        } catch (SQLException e) {
            e.printStackTrace();
            // 에러 발생 시 예약 페이지로 리다이렉트
            req.setAttribute("errorMessage", "예약 중 오류가 발생했습니다. 다시 시도해주세요.");
            req.getRequestDispatcher("/reserve?stName=" + storeName).forward(req, resp);
        }
    }
}
