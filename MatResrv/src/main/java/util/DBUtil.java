package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {

    private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe"; 
    private static final String USER = "system";  
    private static final String PASSWORD = "pass"; 
    private static final String DRIVER_CLASS = "oracle.jdbc.driver.OracleDriver";  

    // 데이터베이스 연결을 반환하는 메서드
    public static Connection getConnection() throws SQLException {
        Connection conn = null;
        try {
            // JDBC 드라이버 로드
            Class.forName(DRIVER_CLASS);
            // 연결 생성
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new SQLException("DB 연결 중 문제가 발생했습니다: " + e.getMessage());
        }
        return conn;
    }
}
