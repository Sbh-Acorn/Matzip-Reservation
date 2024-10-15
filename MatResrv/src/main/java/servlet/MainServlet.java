package servlet;

import dao.StoreDAO;
import model.Customer;
import model.Store;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;	
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/main")
public class MainServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=UTF-8");
    	
    	// 세션에서 로그인된 사용자 정보 확인
        HttpSession session = req.getSession(false);
        StoreDAO storeDAO = new StoreDAO();

        // 지역 선택 값을 세션에서 가져옴 (또는 파라미터로 받을 수 있음)
        String selectedRegion = req.getParameter("region");  // 사용자가 선택한 지역
        if (selectedRegion == null) {
            selectedRegion = "서울 북부";  // 기본 지역 설정
        }

        try {
            // 상위 4개 가게를 가져옴
            List<Store> topStores = storeDAO.getTopStoresByRegion(selectedRegion);
            req.setAttribute("topStores", topStores);  // JSP에 데이터 전달
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // 로그인된 사용자 정보를 요청 속성에 설정
        Customer loggedInCustomer = (Customer) (session != null ? session.getAttribute("loggedInCustomer") : null);
        req.setAttribute("loggedInCustomer", loggedInCustomer);

        // 메인 페이지로 포워딩
        req.getRequestDispatcher("/WEB-INF/views/main.jsp").forward(req, resp);
    }
}