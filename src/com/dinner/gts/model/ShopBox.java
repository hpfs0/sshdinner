package com.dinner.gts.model;

import java.io.Serializable;
import java.util.Date;

public class ShopBox implements Serializable {

    /**
     * serialVersionUID
     */
    private static final long serialVersionUID = 8973819925089095329L;

    /** 购物车ID */
    private String boxId;

    /** 会员ID */
    private String memberId;

    /** 菜品ID */
    private String foodId;

    /** 购买数量 */
    private int buyCount;

    /** 购物车状态 */
    private int boxStauts;

    /** 注册时间 */
    private Date registTime;

    /** 更新时间 */
    private Date updateTime;

    /** 活动区分 */
    private int deleteFlg;

    public String getBoxId() {
        return boxId;
    }

    public void setBoxId(String boxId) {
        this.boxId = boxId;
    }

    public String getMemberId() {
        return memberId;
    }

    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }

    public String getFoodId() {
        return foodId;
    }

    public void setFoodId(String foodId) {
        this.foodId = foodId;
    }

    public int getBuyCount() {
        return buyCount;
    }

    public void setBuyCount(int buyCount) {
        this.buyCount = buyCount;
    }

    public int getBoxStauts() {
        return boxStauts;
    }

    public void setBoxStauts(int boxStauts) {
        this.boxStauts = boxStauts;
    }

    public Date getRegistTime() {
        return registTime;
    }

    public void setRegistTime(Date registTime) {
        this.registTime = registTime;
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
