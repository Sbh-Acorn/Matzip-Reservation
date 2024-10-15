package model;

public class Store {
    private String region;
    private String stName;
    private String menuCategory;
    private String stAddress;
    private String stRate;
    private String stDescription;
    private String imgUrl;  // 이미지 URL 필드 추가

    // 기본 생성자
    public Store() {
    }

    // 매개변수를 받는 생성자 (imgUrl 추가)
    public Store(String region, String stName, String menuCategory, String stAddress, String stRate, String stDescription, String imgUrl) {
        this.region = region;
        this.stName = stName;
        this.menuCategory = menuCategory;
        this.stAddress = stAddress;
        this.stRate = stRate;
        this.stDescription = stDescription;
        this.imgUrl = imgUrl; // 추가
    }

    // Getter 및 Setter 추가
    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getStName() {
        return stName;
    }

    public void setStName(String stName) {
        this.stName = stName;
    }

    public String getMenuCategory() {
        return menuCategory;
    }

    public void setMenuCategory(String menuCategory) {
        this.menuCategory = menuCategory;
    }

    public String getStAddress() {
        return stAddress;
    }

    public void setStAddress(String stAddress) {
        this.stAddress = stAddress;
    }

    public String getStRate() {
        return stRate;
    }

    public void setStRate(String stRate) {
        this.stRate = stRate;
    }

    public String getStDescription() {
        return stDescription;
    }

    public void setStDescription(String stDescription) {
        this.stDescription = stDescription;
    }

    public String getImgUrl() { // imgurl 필드 추가
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }
}
