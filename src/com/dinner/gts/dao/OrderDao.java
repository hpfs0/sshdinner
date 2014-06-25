package com.dinner.gts.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.dinner.gts.model.Order;

/***
 * 
 * 订单Dao
 * 
 * @author jiangdp
 * 
 */
public interface OrderDao {

	/**
	 * 取得Order表中信息
	 * 
	 * @param orderId
	 *            订单号
	 * @return 订单记录
	 */
	public Order getOrderByOrderId(String orderId);

	/**
	 * 批量取得Order表中信息
	 * 
	 * @param dc
	 *            动态检索条件
	 * @return 订单记录
	 */
	public List<Order> getOrderList(DetachedCriteria dc);
}
