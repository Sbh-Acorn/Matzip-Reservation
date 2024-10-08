package model;

public class Customer {
    private String cusId;
    private String cusPw;
    private String cusName;
    private String cusPhone;

    // 기본 생성자
    public Customer() {
    }

    // 매개변수를 받는 생성자
    public Customer(String cusId, String cusPw, String cusName, String cusPhone) {
        this.cusId = cusId;
        this.cusPw = cusPw;
        this.cusName = cusName;
        this.cusPhone = cusPhone;
    }

    // Getter 및 Setter
    public String getCusId() {
        return cusId;
    }

    public void setCusId(String cusId) {
        this.cusId = cusId;
    }

    public String getCusPw() {
        return cusPw;
    }

    public void setCusPw(String cusPw) {
        this.cusPw = cusPw;
    }

    public String getCusName() {
        return cusName;
    }

    public void setCusName(String cusName) {
        this.cusName = cusName;
    }

    public String getCusPhone() {
        return cusPhone;
    }

    public void setCusPhone(String cusPhone) {
        this.cusPhone = cusPhone;
    }
}

