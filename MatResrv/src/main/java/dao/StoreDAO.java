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

    // 모든 가게 정보 조회 (Read)
    public List<Store> getAllStores() throws SQLException {
        String sql = "SELECT * FROM stores_08";
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

    // 가게 정보 수정 (Update)
    public void updateStore(Store store) throws SQLException {
        String sql = "UPDATE stores_08 SET region = ?, menu_category = ?, st_address = ?, st_rate = ?, st_description = ? WHERE st_name = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, store.getRegion());
            pstmt.setString(2, store.getMenuCategory());
            pstmt.setString(3, store.getStAddress());
            pstmt.setString(4, store.getStRate());
            pstmt.setString(5, store.getStDescription());
            pstmt.setString(6, store.getStName());
            pstmt.executeUpdate();
        }
    }

    // 가게 정보 삭제 (Delete)
    public void deleteStore(String storeName) throws SQLException {
        String sql = "DELETE FROM stores_08 WHERE st_name = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, storeName);
            pstmt.executeUpdate();
        }
    }
}

