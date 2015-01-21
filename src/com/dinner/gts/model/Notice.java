package com.dinner.gts.model;

import java.io.Serializable;
import java.util.Date;

public class Notice implements Serializable {

    /**
     * serialVersionUID
     */
    private static final long serialVersionUID = -6584193832340497929L;

    /** 公告ID */
    private String noticeId;

    /** 公告标题 */
    private String noticeHead;

    /** 公告内容 */
    private String noticeContent;

    /** 注册时间 */
    private Date RegistTime;

    /** 更新时间 */
    private Date updateTime;

    /** 活动区分 */
    private int deleteFlg;

    public String getNoticeId() {
        return noticeId;
    }

    public void setNoticeId(String noticeId) {
        this.noticeId = noticeId;
    }

    public String getNoticeHead() {
        return noticeHead;
    }

    public void setNoticeHead(String noticeHead) {
        this.noticeHead = noticeHead;
    }

    public String getNoticeContent() {
        return noticeContent;
    }

    public void setNoticeContent(String noticeContent) {
        this.noticeContent = noticeContent;
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
