package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Owner;
import util.DBUtil;

public class OwnerDAO {

    // 점주 정보 삽입 (Create) - 관리자가 직접 점주 데이터를 입력
    public void addOwner(Owner owner) throws SQLException {
        String sql = "INSERT INTO owner_08 (store_name, owner_pw, owner_phone) VALUES (?, ?, ?)";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, owner.getStoreName());
            pstmt.setString(2, owner.getOwnerPw());
            pstmt.setString(3, owner.getOwnerPhone());
            pstmt.executeUpdate();
        }
    }

    // 가게 이름으로 점주 정보 조회 (Read)
    public Owner getOwnerByStoreName(String storeName) throws SQLException {
        String sql = "SELECT * FROM owner_08 WHERE store_name = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, storeName);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    return new Owner(
                        rs.getString("store_name"),
                        rs.getString("owner_pw"),
                        rs.getString("owner_phone")
                    );
                }
            }
        }
        return null;
    }

    // 모든 점주 정보 조회 (Read)
    public List<Owner> getAllOwners() throws SQLException {
        String sql = "SELECT * FROM owner_08";
        List<Owner> owners = new ArrayList<>();
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            while (rs.next()) {
                owners.add(new Owner(
                    rs.getString("store_name"),
                    rs.getString("owner_pw"),
                    rs.getString("owner_phone")
                ));
            }
        }
        return owners;
    }

    // 점주 정보 수정 (Update)
    public void updateOwner(Owner owner) throws SQLException {
        String sql = "UPDATE owner_08 SET owner_pw = ?, owner_phone = ? WHERE store_name = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, owner.getOwnerPw());
            pstmt.setString(2, owner.getOwnerPhone());
            pstmt.setString(3, owner.getStoreName());
            pstmt.executeUpdate();
        }
    }

    // 점주 정보 삭제 (Delete)
    public void deleteOwner(String storeName) throws SQLException {
        String sql = "DELETE FROM owner_08 WHERE store_name = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, storeName);
            pstmt.executeUpdate();
        }
    }

    // 로그인 기능 추가 (가게 이름과 비밀번호 확인)
    public Owner login(String storeName, String ownerPw) throws SQLException {
        String sql = "SELECT * FROM owner_08 WHERE store_name = ? AND owner_pw = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, storeName);
            pstmt.setString(2, ownerPw);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    return new Owner(
                        rs.getString("store_name"),
                        rs.getString("owner_pw"),
                        rs.getString("owner_phone")
                    );
                }
            }
        }
        return null;
    }
}