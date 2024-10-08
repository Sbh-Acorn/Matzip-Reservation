package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Customer;
import util.DBUtil;

public class CustomerDAO {

    // 고객 정보 삽입 (Create)
    public void addCustomer(Customer customer) throws SQLException {
        String sql = "INSERT INTO st_customers (cus_id, cus_pw, cus_name, cus_phone) VALUES (?, ?, ?, ?)";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, customer.getCusId());
            pstmt.setString(2, customer.getCusPw());
            pstmt.setString(3, customer.getCusName());
            pstmt.setString(4, customer.getCusPhone());
            pstmt.executeUpdate();
        }
    }

    // 고객 ID로 고객 정보 조회 (Read)
    public Customer getCustomerById(String cusId) throws SQLException {
        String sql = "SELECT * FROM st_customers WHERE cus_id = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, cusId);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    return new Customer(
                        rs.getString("cus_id"),
                        rs.getString("cus_pw"),
                        rs.getString("cus_name"),
                        rs.getString("cus_phone")
                    );
                }
            }
        }
        return null;
    }

    // 모든 고객 정보 조회 (Read)
    public List<Customer> getAllCustomers() throws SQLException {
        String sql = "SELECT * FROM st_customers";
        List<Customer> customers = new ArrayList<>();
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            while (rs.next()) {
                customers.add(new Customer(
                    rs.getString("cus_id"),
                    rs.getString("cus_pw"),
                    rs.getString("cus_name"),
                    rs.getString("cus_phone")
                ));
            }
        }
        return customers;
    }

    // 고객 정보 수정 (Update)
    public void updateCustomer(Customer customer) throws SQLException {
        String sql = "UPDATE st_customers SET cus_pw = ?, cus_name = ?, cus_phone = ? WHERE cus_id = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, customer.getCusPw());
            pstmt.setString(2, customer.getCusName());
            pstmt.setString(3, customer.getCusPhone());
            pstmt.setString(4, customer.getCusId());
            pstmt.executeUpdate();
        }
    }

    // 고객 정보 삭제 (Delete)
    public void deleteCustomer(String cusId) throws SQLException {
        String sql = "DELETE FROM st_customers WHERE cus_id = ?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, cusId);
            pstmt.executeUpdate();
        }
    }
}


