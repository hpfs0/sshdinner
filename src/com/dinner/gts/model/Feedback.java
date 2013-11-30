package com.dinner.gts.model;

import java.io.Serializable;
import java.util.Date;

public class Feedback implements Serializable {

    /**
     * serialVersionUID
     */
    private static final long serialVersionUID = 760422021474403055L;

    /** 反馈ID */
    private String feedbackId;

    /** 反馈者登录帐号ID */
    private String feedbackLoginId;

    /** 标题 */
    private String feedbackTopic;

    /** 投诉建议 */
    private String feedbackContent;

    /** 真实姓名 */
    private String feedbackRealName;

    /** 性别 */
    private int feedbackSex;

    /** 联系电话 */
    private String feedbackPhone;

    /** 联系地址 */
    private String feedbackAdress;

    /** 注册时间 */
    private Date RegistTime;

    /** 更新时间 */
    private Date updateTime;

    /** 活动区分 */
    private int deleteFlg;

    public String getFeedbackId() {
        return feedbackId;
    }

    public void setFeedbackId(String feedbackId) {
        this.feedbackId = feedbackId;
    }

    public String getFeedbackLoginId() {
        return feedbackLoginId;
    }

    public void setFeedbackLoginId(String feedbackLoginId) {
        this.feedbackLoginId = feedbackLoginId;
    }

    public String getFeedbackTopic() {
        return feedbackTopic;
    }

    public void setFeedbackTopic(String feedbackTopic) {
        this.feedbackTopic = feedbackTopic;
    }

    public String getFeedbackContent() {
        return feedbackContent;
    }

    public void setFeedbackContent(String feedbackContent) {
        this.feedbackContent = feedbackContent;
    }

    public String getFeedbackRealName() {
        return feedbackRealName;
    }

    public void setFeedbackRealName(String feedbackRealName) {
        this.feedbackRealName = feedbackRealName;
    }

    public int getFeedbackSex() {
        return feedbackSex;
    }

    public void setFeedbackSex(int feedbackSex) {
        this.feedbackSex = feedbackSex;
    }

    public String getFeedbackPhone() {
        return feedbackPhone;
    }

    public void setFeedbackPhone(String feedbackPhone) {
        this.feedbackPhone = feedbackPhone;
    }

    public String getFeedbackAdress() {
        return feedbackAdress;
    }

    public void setFeedbackAdress(String feedbackAdress) {
        this.feedbackAdress = feedbackAdress;
    }

    public Date getRegistTime() {
        return RegistTime;
    }

    public void setRegistTime(Date registTime) {
        RegistTime = registTime;
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
