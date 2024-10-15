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
import java.util.List;

@WebServlet("/category")
public class CategoryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 파라미터로 받은 지역과 카테고리 정보 가져오기
    	req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=UTF-8");
        String region = req.getParameter("region");
        String category = req.getParameter("category");
        
        if (region == null || category == null) {
            resp.sendRedirect(req.getContextPath() + "/main"); // 만약 지역이나 카테고리가 없다면 메인 페이지로 리다이렉트
            return;
        }

        // DAO를 사용해 해당 지역과 카테고리에 맞는 음식점 정보 가져오기
        StoreDAO storeDAO = new StoreDAO();
        try {
            List<Store> stores = storeDAO.getStoresByRegionAndCategory(region, category);
            req.setAttribute("stores", stores); // 가져온 데이터를 JSP에 넘기기
        } catch (SQLException e) {
            e.printStackTrace();
            throw new ServletException("데이터베이스 에러");
        }

        // category.jsp로 포워딩
        req.getRequestDispatcher("/WEB-INF/views/category.jsp").forward(req, resp);
    }
}
