package com.dinner.gts.dao;

import com.dinner.gts.model.Order;

public interface OrderDao {

	/**
	 * 取得Order表中信息
	 * @param orderId 订单号
	 * @return 订单记录
	 */
	public Order getOrder(String orderId);
}
