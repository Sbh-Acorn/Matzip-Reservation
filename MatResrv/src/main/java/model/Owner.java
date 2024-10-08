package model;

public class Owner {
    private String storeName;
    private String ownerPw;
    private String ownerPhone;

    // 기본 생성자
    public Owner() {
    }

    // 매개변수를 받는 생성자
    public Owner(String storeName, String ownerPw, String ownerPhone) {
        this.storeName = storeName;
        this.ownerPw = ownerPw;
        this.ownerPhone = ownerPhone;
    }

    // Getter 및 Setter
    public String getStoreName() {
        return storeName;
    }

    public void setStoreName(String storeName) {
        this.storeName = storeName;
    }

    public String getOwnerPw() {
        return ownerPw;
    }

    public void setOwnerPw(String ownerPw) {
        this.ownerPw = ownerPw;
    }

    public String getOwnerPhone() {
        return ownerPhone;
    }

    public void setOwnerPhone(String ownerPhone) {
        this.ownerPhone = ownerPhone;
    }
}

