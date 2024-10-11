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

    // GET 요청으로 가게 로그인 페이지로 이동
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/store-login.jsp").forward(req, resp);
    }

    // POST 요청으로 로그인 처리
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 사용자가 입력한 가게 이름과 비밀번호를 받아옴
        String storeName = req.getParameter("storeName");
        String ownerPw = req.getParameter("ownerPw");

        OwnerDAO ownerDAO = new OwnerDAO();
        try {
            // 입력한 가게 이름으로 데이터베이스에서 점주 정보를 조회
            Owner owner = ownerDAO.getOwnerByStoreName(storeName);

            if (owner == null) {
                // 가게가 등록되지 않았을 경우
                req.setAttribute("errorMessage", "등록되지 않은 가게입니다.");
                req.getRequestDispatcher("/WEB-INF/views/store-login.jsp").forward(req, resp);
            } else {
                // 가게가 존재할 경우 비밀번호를 확인
                if (owner.getOwnerPw().equals(ownerPw)) {
                    // 비밀번호가 일치하면 로그인 성공, 세션에 점주 정보 저장
                    HttpSession session = req.getSession();
                    session.setAttribute("loggedInOwner", owner);

                    // 로그인 성공 후 메인 페이지로 리다이렉트
                    resp.sendRedirect(req.getContextPath() + "/main");
                } else {
                    // 비밀번호가 틀린 경우
                    req.setAttribute("errorMessage", "비밀번호가 틀렸습니다.");
                    req.getRequestDispatcher("/WEB-INF/views/store-login.jsp").forward(req, resp);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new ServletException("Database error during login.");
        }
    }
}
