package com.dinner.gts.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class Order implements Serializable {

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 760422021474403055L;
	
	// 订单ID
	private String orderId;
	
	// 订单类型
	private int orderType;
	
	// 订单No
	private String orderMemberId;
	
	// 订单价格
	private BigDecimal orderPrice;
	
	// 下订单时间
	private Date registTime;
	
	// 订单更新时间
	private Date updateTime;
	
	// 删除标志
	private int deleteFlg;

	/**
	 * @return 取得 orderId
	 */
	public String getOrderId() {
		return orderId;
	}

	/**
	 * @param 设置orderId
	 */
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	/**
	 * @return 取得 orderType
	 */
	public int getOrderType() {
		return orderType;
	}

	/**
	 * @param 设置orderType
	 */
	public void setOrderType(int orderType) {
		this.orderType = orderType;
	}

	/**
	 * @return 取得 orderMemberId
	 */
	public String getOrderMemberId() {
		return orderMemberId;
	}

	/**
	 * @param 设置orderMemberId
	 */
	public void setOrderMemberId(String orderMemberId) {
		this.orderMemberId = orderMemberId;
	}

	/**
	 * @return 取得 orderPrice
	 */
	public BigDecimal getOrderPrice() {
		return orderPrice;
	}

	/**
	 * @param 设置orderPrice
	 */
	public void setOrderPrice(BigDecimal orderPrice) {
		this.orderPrice = orderPrice;
	}

	/**
	 * @return 取得 registTime
	 */
	public Date getRegistTime() {
		return registTime;
	}

	/**
	 * @param 设置registTime
	 */
	public void setRegistTime(Date registTime) {
		this.registTime = registTime;
	}

	/**
	 * @return 取得 updateTime
	 */
	public Date getUpdateTime() {
		return updateTime;
	}

	/**
	 * @param 设置updateTime
	 */
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	/**
	 * @return 取得 deleteFlg
	 */
	public int getDeleteFlg() {
		return deleteFlg;
	}

	/**
	 * @param 设置deleteFlg
	 */
	public void setDeleteFlg(int deleteFlg) {
		this.deleteFlg = deleteFlg;
	}
	
	

}
