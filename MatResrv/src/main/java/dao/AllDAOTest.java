package dao;

import java.sql.SQLException;
import model.Customer;
import model.Owner;
import model.Reservation;
import model.Store;

public class AllDAOTest {

    public static void main(String[] args) {
        CustomerDAO customerDAO = new CustomerDAO();
        OwnerDAO ownerDAO = new OwnerDAO();
        StoreDAO storeDAO = new StoreDAO();
        ReservationDAO reservationDAO = new ReservationDAO();

        try {
            // 1. 가게 추가 (기존 가게가 있으면 생략)
            System.out.println("=== 가게 추가 테스트 ===");
            Store existingStore = storeDAO.getStoreByName("testStore");
            if (existingStore != null) {
                System.out.println("기존 가게 'testStore'가 이미 존재합니다.");
            } else {
                Store newStore = new Store("서울 북부", "testStore", "한식", "서울 노원구", "4.5", "20년 된 한식당 전문점");
                storeDAO.addStore(newStore);
                System.out.println("가게가 성공적으로 추가되었습니다.");
            }

            // 2. 가게 정보 조회
            Store retrievedStore = storeDAO.getStoreByName("testStore");
            if (retrievedStore != null) {
                System.out.println("가게 이름: " + retrievedStore.getStName());
                System.out.println("가게 주소: " + retrievedStore.getStAddress());
            }

            // 3. 점주 추가 테스트
            System.out.println("=== 점주 추가 테스트 ===");
            Owner existingOwner = ownerDAO.getOwnerByStoreName("testStore");
            if (existingOwner != null) {
                System.out.println("해당 가게의 점주가 이미 존재합니다.");
            } else {
                Owner newOwner = new Owner("testStore", "testPw1234", "01012345678");
                ownerDAO.addOwner(newOwner);
                System.out.println("점주가 성공적으로 추가되었습니다.");
            }

            // 4. 점주 로그인 테스트
            Owner loginOwner = ownerDAO.login("testStore", "testPw1234");
            if (loginOwner != null) {
                System.out.println("점주 로그인 성공! 가게 이름: " + loginOwner.getStoreName());
            }

            // 5. 고객 추가 테스트 (기존 고객이 있으면 생략)
            System.out.println("=== 고객 추가 테스트 ===");
            Customer existingCustomer = customerDAO.getCustomerById("testId1");
            if (existingCustomer != null) {
                System.out.println("고객 'testId1'이 이미 존재합니다.");
            } else {
                Customer newCustomer = new Customer("testId1", "testPw1234", "전우선", "01012345678");
                customerDAO.addCustomer(newCustomer);
                System.out.println("고객이 성공적으로 추가되었습니다.");
            }

            // 6. 고객 로그인 테스트
            Customer loginCustomer = customerDAO.login("testId1", "testPw1234");
            if (loginCustomer != null) {
                System.out.println("고객 로그인 성공! 고객 이름: " + loginCustomer.getCusName());
            }

            // 7. 예약 추가 테스트
            System.out.println("=== 예약 추가 테스트 ===");
            Reservation newReservation = new Reservation("testStore", "전우선", "20241201", "18:00", "4", "Y", "N");
            reservationDAO.addReservation(newReservation);
            System.out.println("예약이 성공적으로 추가되었습니다.");

            // 8. 예약 번호로 예약 조회 테스트
            Reservation retrievedReservation = reservationDAO.getReservationByResNo("1");
            if (retrievedReservation != null) {
                System.out.println("예약 번호: " + retrievedReservation.getResNo());
                System.out.println("예약자 이름: " + retrievedReservation.getResName());
            }

            // 9. 고객 예약 내역 조회
            System.out.println("\n=== 고객 예약 내역 조회 테스트 ===");
            for (Reservation res : reservationDAO.getReservationsByCustomer("전우선")) {
                System.out.println("예약 번호: " + res.getResNo() + ", 가게 이름: " + res.getResStore());
            }

            // 10. 점주의 가게 예약 내역 조회
            System.out.println("\n=== 점주 예약 내역 조회 테스트 ===");
            for (Reservation res : reservationDAO.getReservationsByStore("testStore")) {
                System.out.println("예약 번호: " + res.getResNo() + ", 고객 이름: " + res.getResName());
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
