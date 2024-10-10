package servlet;

import dao.OwnerDAO;
import model.Owner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/store-login")
public class StoreLoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 사용자가 입력한 가게 이름과 비밀번호를 받아옴
        String storeName = req.getParameter("storeName");
        String ownerPw = req.getParameter("ownerPw");

        OwnerDAO ownerDAO = new OwnerDAO();
        try {
            // 입력한 가게 이름으로 데이터베이스에서 점주 정보를 조회
            Owner owner = ownerDAO.getOwnerByStoreName(storeName);

            if (owner != null && owner.getOwnerPw().equals(ownerPw)) {
                // 비밀번호가 일치하면 로그인 성공, 세션에 점주 정보 저장
                HttpSession session = req.getSession();
                session.setAttribute("loggedInOwner", owner);

                // 로그인 성공 후 메인 페이지로 리다이렉트
                resp.sendRedirect(req.getContextPath() + "/main");
            } else {
                // 비밀번호가 일치하지 않거나 점주가 없을 경우, 로그인 실패
                req.setAttribute("errorMessage", "Invalid store name or password.");
                req.getRequestDispatcher("/WEB-INF/views/store-login.jsp").forward(req, resp);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new ServletException("Database error during login.");
        }
    }
}
