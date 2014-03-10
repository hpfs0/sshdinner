package com.dinner.gts.model;

import java.io.Serializable;
import java.util.Date;

public class Note implements Serializable{

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -4995118912202018229L;

	/** 留言ID */
	private String noteId;
	
	/** 标题 */
	private String noteTopic;
	
	/** 留言内容 */
	private String noteContent;
	
	/** 留言者登录帐号ID */
	private String noteLoginId;
	
	/** 真实姓名 */
	private String noteRealName;
	
	/** 电子邮件 */
	private String noteMail;
	
	/** 会员QQ */
	private String noteQq;
	
	/** 个人主页地址 */
	private String notePersonalHomePage;
	
	/** 当前心情 */
	private String noteMood;
	
	/** 悄悄话 */
	private int noteSecret;
	
	/** 留言时间 */
	private Date noteTime;
	
	/** 更新时间 */
	private Date updateTime;
	
	/** 活动区分 */
	private int deleteFlg;

	public String getNoteId() {
		return noteId;
	}

	public void setNoteId(String noteId) {
		this.noteId = noteId;
	}

	public String getNoteTopic() {
		return noteTopic;
	}

	public void setNoteTopic(String noteTopic) {
		this.noteTopic = noteTopic;
	}

	public String getNoteContent() {
		return noteContent;
	}

	public void setNoteContent(String noteContent) {
		this.noteContent = noteContent;
	}

	public String getNoteLoginId() {
		return noteLoginId;
	}

	public void setNoteLoginId(String noteLoginId) {
		this.noteLoginId = noteLoginId;
	}

	public String getNoteRealName() {
		return noteRealName;
	}

	public void setNoteRealName(String noteRealName) {
		this.noteRealName = noteRealName;
	}

	public String getNoteMail() {
		return noteMail;
	}

	public void setNoteMail(String noteMail) {
		this.noteMail = noteMail;
	}

	public String getNoteQq() {
		return noteQq;
	}

	public void setNoteQq(String noteQq) {
		this.noteQq = noteQq;
	}

	public String getNotePersonalHomePage() {
		return notePersonalHomePage;
	}

	public void setNotePersonalHomePage(String notePersonalHomePage) {
		this.notePersonalHomePage = notePersonalHomePage;
	}

	public String getNoteMood() {
		return noteMood;
	}

	public void setNoteMood(String noteMood) {
		this.noteMood = noteMood;
	}

	public int getNoteSecret() {
		return noteSecret;
	}

	public void setNoteSecret(int noteSecret) {
		this.noteSecret = noteSecret;
	}

	public Date getNoteTime() {
		return noteTime;
	}

	public void setNoteTime(Date noteTime) {
		this.noteTime = noteTime;
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
