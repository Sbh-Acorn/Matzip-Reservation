package servlet;

import dao.StoreDAO;
import model.Store;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/reserve")
public class ReserveServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=UTF-8");
    	String storeName = req.getParameter("stName");

        // StoreDAO를 이용하여 해당 가게 정보를 가져옴
        StoreDAO storeDAO = new StoreDAO();
        try {
            Store store = storeDAO.getStoreByName(storeName);
            if (store != null) {
                // 가게 정보를 JSP에 전달
                req.setAttribute("store", store);
                req.getRequestDispatcher("/WEB-INF/views/reserve.jsp").forward(req, resp);
            } else {
                resp.sendRedirect(req.getContextPath() + "/main"); // 가게 정보가 없을 경우 메인 페이지로 리다이렉트
            }
        } catch (SQLException e) {
            e.printStackTrace();
            resp.sendRedirect(req.getContextPath() + "/main"); // 에러 발생 시 메인 페이지로 리다이렉트
        }
    }
}
