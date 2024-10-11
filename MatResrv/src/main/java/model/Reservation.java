package model;

public class Reservation {
    private String resNo;
    private String resStore;
    private String resName;
    private String resDate;
    private String resTime;
    private String numberOfPp;
    private String resSuccess;
    private String resCheck;

    // 기본 생성자
    public Reservation() {
    }

    // 8개의 매개변수를 받는 생성자
    public Reservation(String resNo, String resStore, String resName, String resDate, String resTime, String numberOfPp, String resSuccess, String resCheck) {
        this.resNo = resNo;
        this.resStore = resStore;
        this.resName = resName;
        this.resDate = resDate;
        this.resTime = resTime;
        this.numberOfPp = numberOfPp;
        this.resSuccess = resSuccess;
        this.resCheck = resCheck;
    }

    // 7개의 매개변수를 받는 생성자 (resNo 없이)
    public Reservation(String resStore, String resName, String resDate, String resTime, String numberOfPp, String resSuccess, String resCheck) {
        this.resStore = resStore;
        this.resName = resName;
        this.resDate = resDate;
        this.resTime = resTime;
        this.numberOfPp = numberOfPp;
        this.resSuccess = resSuccess;
        this.resCheck = resCheck;
    }

    // Getter 및 Setter
    public String getResNo() {
        return resNo;
    }

    public void setResNo(String resNo) {
        this.resNo = resNo;
    }

    public String getResStore() {
        return resStore;
    }

    public void setResStore(String resStore) {
        this.resStore = resStore;
    }

    public String getResName() {
        return resName;
    }

    public void setResName(String resName) {
        this.resName = resName;
    }

    public String getResDate() {
        return resDate;
    }

    public void setResDate(String resDate) {
        this.resDate = resDate;
    }

    public String getResTime() {
        return resTime;
    }

    public void setResTime(String resTime) {
        this.resTime = resTime;
    }

    public String getNumberOfPp() {
        return numberOfPp;
    }

    public void setNumberOfPp(String numberOfPp) {
        this.numberOfPp = numberOfPp;
    }

    public String getResSuccess() {
        return resSuccess;
    }

    public void setResSuccess(String resSuccess) {
        this.resSuccess = resSuccess;
    }

    public String getResCheck() {
        return resCheck;
    }

    public void setResCheck(String resCheck) {
        this.resCheck = resCheck;
    }
}

