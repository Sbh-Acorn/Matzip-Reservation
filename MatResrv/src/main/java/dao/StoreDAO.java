package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Store;
import util.DBUtil;

public class StoreDAO {

    // 가게 정보 삽입 (Create)
    public void addStore(Store store) throws SQLException {
        String sql = "INSERT INTO stores_08 (region, st_name, menu_category, st_address, st_rate, st_description) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, store.getRegion());
            pstmt.setString(2, store.getStName());
            pstmt.setString(3, store.getMenuCategory());
            pstmt.setString(4, store.getStAddress());
            pstmt.setString(5, store.getStRate());
            pstmt.setString(6, store.getStDescription());
            pstmt.executeUpdate();
        }
    }

    // 가게 이름으로 가게 정보 조회 (Read)
    public Store getStoreByName(String storeName) throws SQLException {
        String sql = "SELECT * FROM stores_08 WHERE st_name = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, storeName);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    return new Store(
                        rs.getString("region"),
                        rs.getString("st_name"),
                        rs.getString("menu_category"),
                        rs.getString("st_address"),
                        rs.getString("st_rate"),
                        rs.getString("st_description")
                    );
                }
            }
        }
        return null;
    }

    // 지역별 가게 정보 조회 (Read)
    public List<Store> getStoresByRegion(String region) throws SQLException {
        String sql = "SELECT * FROM stores_08 WHERE region = ?";
        List<Store> stores = new ArrayList<>();
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, region);
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    stores.add(new Store(
                        rs.getString("region"),
                        rs.getString("st_name"),
                        rs.getString("menu_category"),
                        rs.getString("st_address"),
                        rs.getString("st_rate"),
                        rs.getString("st_description")
                    ));
                }
            }
        }
        return stores;
    }

    // 지역 선택 후 카테고리 필터 적용 (Read)
    public List<Store> getStoresByRegionAndCategory(String region, String category) throws SQLException {
        String sql = "SELECT * FROM stores_08 WHERE region = ? AND menu_category = ?";
        List<Store> stores = new ArrayList<>();
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, region);
            pstmt.setString(2, category);
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    stores.add(new Store(
                        rs.getString("region"),
                        rs.getString("st_name"),
                        rs.getString("menu_category"),
                        rs.getString("st_address"),
                        rs.getString("st_rate"),
                        rs.getString("st_description")
                    ));
                }
            }
        }
        return stores;
    }

    // 평점과 인기 순(예약 수 기준)을 결합하여 가게 조회
    public List<Store> getStoresByCombinedScore() throws SQLException {
        String sql = "SELECT s.st_name, s.st_rate, s.region, s.menu_category, s.st_address, s.st_description, " +
                     "COUNT(r.res_no) AS reservation_count, " +
                     "(s.st_rate * 0.7 + COUNT(r.res_no) * 0.3) AS combined_score " +
                     "FROM stores_08 s " +
                     "LEFT JOIN st_reservations r ON s.st_name = r.res_store " +
                     "GROUP BY s.st_name, s.st_rate, s.region, s.menu_category, s.st_address, s.st_description " +
                     "ORDER BY combined_score DESC";
        List<Store> stores = new ArrayList<>();
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            while (rs.next()) {
                stores.add(new Store(
                    rs.getString("region"),
                    rs.getString("st_name"),
                    rs.getString("menu_category"),
                    rs.getString("st_address"),
                    rs.getString("st_rate"),
                    rs.getString("st_description")
                ));
            }
        }
        return stores;
    }
}