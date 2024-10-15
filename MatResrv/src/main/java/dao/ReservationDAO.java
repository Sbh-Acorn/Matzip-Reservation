package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Reservation;
import util.DBUtil;

public class ReservationDAO {
    // 예약 상태 업데이트 메소드 (resCheck 값 업데이트)
    public void updateReservationStatus(String resNo, String resCheck) throws SQLException {
        String sql = "UPDATE st_reservations SET res_check = ? WHERE res_no = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, resCheck);
            pstmt.setString(2, resNo);
            pstmt.executeUpdate();
        }
    }
    // 예약 정보 삽입 (Create)
    public void addReservation(Reservation reservation) throws SQLException {
        String sql = "INSERT INTO st_reservations (res_no, res_store, res_name, res_date, res_time, number_of_pp, res_success, res_check) VALUES (reservSeq.nextval, ?, ?, ?, ?, ?, ?, ?)";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, reservation.getResStore());
            pstmt.setString(2, reservation.getResName());
            pstmt.setString(3, reservation.getResDate());
            pstmt.setString(4, reservation.getResTime());
            pstmt.setString(5, reservation.getNumberOfPp()); 
            pstmt.setString(6, reservation.getResSuccess());
            pstmt.setString(7, reservation.getResCheck());
            pstmt.executeUpdate();
        }
    }

    // 예약 번호로 예약 정보 조회 (Read)
    public Reservation getReservationByResNo(String resNo) throws SQLException {
        String sql = "SELECT * FROM st_reservations WHERE res_no = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, resNo);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    return new Reservation(
                        rs.getString("res_no"), 
                        rs.getString("res_store"),
                        rs.getString("res_name"),
                        rs.getString("res_date"),
                        rs.getString("res_time"),
                        rs.getString("number_of_pp"),  
                        rs.getString("res_success"),
                        rs.getString("res_check")
                    );
                }
            }
        }
        return null;
    }

    // 모든 예약 정보 조회 (Read)
    public List<Reservation> getAllReservations() throws SQLException {
        String sql = "SELECT * FROM st_reservations";
        List<Reservation> reservations = new ArrayList<>();
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            while (rs.next()) {
                reservations.add(new Reservation(
                    rs.getString("res_no"),  
                    rs.getString("res_store"),
                    rs.getString("res_name"),
                    rs.getString("res_date"),
                    rs.getString("res_time"),
                    rs.getString("number_of_pp"), 
                    rs.getString("res_success"),
                    rs.getString("res_check")
                ));
            }
        }
        return reservations;
    }

    // 예약 정보 수정 (Update)
    public void updateReservation(Reservation reservation) throws SQLException {
        String sql = "UPDATE st_reservations SET res_store = ?, res_name = ?, res_date = ?, res_time = ?, number_of_pp = ?, res_success = ?, res_check = ? WHERE res_no = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, reservation.getResStore());
            pstmt.setString(2, reservation.getResName());
            pstmt.setString(3, reservation.getResDate());
            pstmt.setString(4, reservation.getResTime());
            pstmt.setString(5, reservation.getNumberOfPp());  
            pstmt.setString(6, reservation.getResSuccess());
            pstmt.setString(7, reservation.getResCheck());
            pstmt.setString(8, reservation.getResNo());
            pstmt.executeUpdate();
        }
    }

    // 예약 정보 삭제 (Delete)
    public void deleteReservation(String resNo) throws SQLException {
        String sql = "DELETE FROM st_reservations WHERE res_no = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, resNo);
            pstmt.executeUpdate();
        }
    }

    // 고객의 예약 내역 조회
    public List<Reservation> getReservationsByCustomer(String cusName) throws SQLException {
        String sql = "SELECT * FROM st_reservations WHERE res_name = ?";
        List<Reservation> reservations = new ArrayList<>();
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, cusName);
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    reservations.add(new Reservation(
                        rs.getString("res_no"),
                        rs.getString("res_store"),
                        rs.getString("res_name"),
                        rs.getString("res_date"),
                        rs.getString("res_time"),
                        rs.getString("number_of_pp"),
                        rs.getString("res_success"),
                        rs.getString("res_check")
                    ));
                }
            }
        }
        return reservations;
    }

    // 점주의 가게 예약 내역 조회
    public List<Reservation> getReservationsByStore(String storeName) throws SQLException {
        String sql = "SELECT * FROM st_reservations WHERE res_store = ?";
        List<Reservation> reservations = new ArrayList<>();
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, storeName);
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    reservations.add(new Reservation(
                        rs.getString("res_no"),
                        rs.getString("res_store"),
                        rs.getString("res_name"),
                        rs.getString("res_date"),
                        rs.getString("res_time"),
                        rs.getString("number_of_pp"),
                        rs.getString("res_success"),
                        rs.getString("res_check")
                    ));
                }
            }
        }
        return reservations;
    }
}

