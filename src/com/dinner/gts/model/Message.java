package com.dinner.gts.model;

import java.io.Serializable;
import java.util.Date;

public class Message implements Serializable {

    /**
     * serialVersionUID
     */
    private static final long serialVersionUID = 3440765179141523325L;

    /** 消息ID */
    private String messageId;

    /** 消息类型 */
    private int messageType;

    /** 消息内容 */
    private String messageContent;

    /** 注册时间 */
    private Date RegistTime;

    /** 更新时间 */
    private Date updateTime;

    /** 活动区分 */
    private int deleteFlg;

    public String getMessageId() {
        return messageId;
    }

    public void setMessageId(String messageId) {
        this.messageId = messageId;
    }

    public int getMessageType() {
        return messageType;
    }

    public void setMessageType(int messageType) {
        this.messageType = messageType;
    }

    public String getMessageContent() {
        return messageContent;
    }

    public void setMessageContent(String messageContent) {
        this.messageContent = messageContent;
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
