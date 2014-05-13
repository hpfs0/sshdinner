package com.dinner.gts.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class Order implements Serializable {

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 760422021474403055L;
	
	private String orderId;
	private int orderType;
	private String orderMemberId;
	private BigDecimal orderPrice;
	private Date registTime;
	private Date updateTime;
	private int deleteFlg;
	
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public int getOrderType() {
		return orderType;
	}
	public void setOrderType(int orderType) {
		this.orderType = orderType;
	}
	public String getOrderMemberId() {
		return orderMemberId;
	}
	public void setOrderMemberId(String orderMemberId) {
		this.orderMemberId = orderMemberId;
	}
	public BigDecimal getOrderPrice() {
		return orderPrice;
	}
	public void setOrderPrice(BigDecimal orderPrice) {
		this.orderPrice = orderPrice;
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
