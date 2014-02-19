package com.dinner.gts.model;

import java.io.Serializable;
import java.util.Date;

public class FoodDetail implements Serializable {

    /**
     * serialVersionUID
     */
    private static final long serialVersionUID = -5764459018209656724L;
    /** 菜品ID */
    private String foodId;

    /** 菜品名  */
    private String foodName;

    /** 菜品单价  */
    private double foodUnitPrice;

    /** 会员单价 */
    private double foodMemberPrice;

    /** 菜品所属菜系  */
    private String foodCuisineKind;

    /** 菜品辣度  */
    private String foodPungencyDegree;

    /** 菜品库存  */
    private int foodStock;

    /** 菜品图片路径  */
    private String foodPhotoUrlpath;

    /** 菜品销量  */
    private int foodSalesCopies;

    /** 会员单价（最高） */
    private double foodMemberPriceFrom;
    
    /** 会员单价（最低） */
    private double foodMemberPriceTo;
    
    /** 优惠状况 */
    private String preferentialStatus;
    
    /** 注册时间  */
    private Date registerTimeDate;

    /** 更新时间 */
    private Date updateTime;

    /** 活动区分 */
    private int deleteFlg;
    
    public String getFoodId() {
        return foodId;
    }

    
    public void setFoodId(String foodId) {
        this.foodId = foodId;
    }

    
    public String getFoodName() {
        return foodName;
    }

    
    public void setFoodName(String foodName) {
        this.foodName = foodName;
    }

    
    public double getFoodUnitPrice() {
        return foodUnitPrice;
    }

    
    public void setFoodUnitPrice(double foodUnitPrice) {
        this.foodUnitPrice = foodUnitPrice;
    }

    
    public double getFoodMemberPrice() {
        return foodMemberPrice;
    }

    
    public void setFoodMemberPrice(double foodMemberPrice) {
        this.foodMemberPrice = foodMemberPrice;
    }

    
    public String getFoodCuisineKind() {
        return foodCuisineKind;
    }

    
    public void setFoodCuisineKind(String foodCuisineKind) {
        this.foodCuisineKind = foodCuisineKind;
    }

    
    public String getFoodPungencyDegree() {
        return foodPungencyDegree;
    }

    
    public void setFoodPungencyDegree(String foodPungencyDegree) {
        this.foodPungencyDegree = foodPungencyDegree;
    }

    
    public int getFoodStock() {
        return foodStock;
    }

    
    public void setFoodStock(int foodStock) {
        this.foodStock = foodStock;
    }

    
    public String getFoodPhotoUrlpath() {
        return foodPhotoUrlpath;
    }

    
    public void setFoodPhotoUrlpath(String foodPhotoUrlpath) {
        this.foodPhotoUrlpath = foodPhotoUrlpath;
    }

    
    public int getFoodSalesCopies() {
        return foodSalesCopies;
    }

    
    public void setFoodSalesCopies(int foodSalesCopies) {
        this.foodSalesCopies = foodSalesCopies;
    }

    
    
    public double getFoodMemberPriceFrom() {
        return foodMemberPriceFrom;
    }


    
    public void setFoodMemberPriceFrom(double foodMemberPriceFrom) {
        this.foodMemberPriceFrom = foodMemberPriceFrom;
    }


    
    public double getFoodMemberPriceTo() {
        return foodMemberPriceTo;
    }


    
    public void setFoodMemberPriceTo(double foodMemberPriceTo) {
        this.foodMemberPriceTo = foodMemberPriceTo;
    }

    
    public Date getRegisterTimeDate() {
        return registerTimeDate;
    }

    
    public void setRegisterTimeDate(Date registerTimeDate) {
        this.registerTimeDate = registerTimeDate;
    }

    
    
    public String getPreferentialStatus() {
        return preferentialStatus;
    }


    
    public void setPreferentialStatus(String preferentialStatus) {
        this.preferentialStatus = preferentialStatus;
    }

    
    public Date getUpdateTime() {
        return updateTime;
    }

    
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    
    public int getDeleteFlg() {
        return deleteFlg;
    }

    
    public void setDeleteFlg(int deleteFlg) {
        this.deleteFlg = deleteFlg;
    }

}
