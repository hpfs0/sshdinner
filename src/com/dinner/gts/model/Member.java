package com.dinner.gts.model;

import java.io.Serializable;
import java.util.Date;

public class Member implements Serializable {

    /**
     * serialVersionUID
     */
    private static final long serialVersionUID = 6314025562847737700L;

    /** 会员ID */
    private String memberId;

    /** 会员帐号 */
    private String memberLoginId;

    /** 会员密码 */
    private String memberLoginPw;

    /** 昵称 */
    private String memberNickName;

    /** 电子邮箱 */
    private String memberMail;

    /** 注册IP */
    private String memberRegisterIp;

    /** 登录MAC地址 */
    private String memberMacAddress;

    /** 登录次数 */
    private int memberLoginCount;

    /** 真实姓名 */
    private String memberRealName;

    /** 会员类型 */
    private int memberType;

    /** 会员QQ */
    private String memberQq;

    /** 账户余额 */
    private double memberBalance;

    /** 会员积分 */
    private int memberPoints;

    /** 固定电话 */
    private String memberTel;

    /** 手机号码 */
    private String memberPhone;

    /** 公司 */
    private String memberCompany;

    /** 注册时间 */
    private Date RegistTime;

    /** 更新时间 */
    private Date updateTime;

    /** 活动区分 */
    private int deleteFlg;

    /** 登陆状态 */
    private int loginStatus;

    public String getMemberId() {
        return memberId;
    }

    public void setMemberId(String memberId) {
        this.memberId = memberId;
    }

    public String getMemberLoginId() {
        return memberLoginId;
    }

    public void setMemberLoginId(String memberLoginId) {
        this.memberLoginId = memberLoginId;
    }

    public String getMemberLoginPw() {
        return memberLoginPw;
    }

    public void setMemberLoginPw(String memberLoginPw) {
        this.memberLoginPw = memberLoginPw;
    }

    public String getMemberNickName() {
        return memberNickName;
    }

    public void setMemberNickName(String memberNickName) {
        this.memberNickName = memberNickName;
    }

    public String getMemberMail() {
        return memberMail;
    }

    public void setMemberMail(String memberMail) {
        this.memberMail = memberMail;
    }

    public String getMemberRegisterIp() {
        return memberRegisterIp;
    }

    public void setMemberRegisterIp(String memberRegisterIp) {
        this.memberRegisterIp = memberRegisterIp;
    }

    public int getMemberLoginCount() {
        return memberLoginCount;
    }

    public void setMemberLoginCount(int memberLoginCount) {
        this.memberLoginCount = memberLoginCount;
    }

    public String getMemberRealName() {
        return memberRealName;
    }

    public void setMemberRealName(String memberRealName) {
        this.memberRealName = memberRealName;
    }

    public int getMemberType() {
        return memberType;
    }

    public void setMemberType(int memberType) {
        this.memberType = memberType;
    }

    public String getMemberQq() {
        return memberQq;
    }

    public void setMemberQq(String memberQq) {
        this.memberQq = memberQq;
    }

    public double getMemberBalance() {
        return memberBalance;
    }

    public void setMemberBalance(double memberBalance) {
        this.memberBalance = memberBalance;
    }

    public int getMemberPoints() {
        return memberPoints;
    }

    public void setMemberPoints(int memberPoints) {
        this.memberPoints = memberPoints;
    }

    public String getMemberTel() {
        return memberTel;
    }

    public void setMemberTel(String memberTel) {
        this.memberTel = memberTel;
    }

    public String getMemberPhone() {
        return memberPhone;
    }

    public void setMemberPhone(String memberPhone) {
        this.memberPhone = memberPhone;
    }

    public String getMemberCompany() {
        return memberCompany;
    }

    public void setMemberCompany(String memberCompany) {
        this.memberCompany = memberCompany;
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

    public int getLoginStatus() {
        return loginStatus;
    }

    public void setLoginStatus(int loginStatus) {
        this.loginStatus = loginStatus;
    }

    public String getMemberMacAddress() {
        return memberMacAddress;
    }

    public void setMemberMacAddress(String memberMacAddress) {
        this.memberMacAddress = memberMacAddress;
    }

}
