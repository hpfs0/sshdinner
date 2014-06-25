package com.dinner.gts.service;

import com.dinner.gts.dao.OrderDao;
import com.dinner.gts.dao.OrderDaoImpl;
import com.dinner.gts.model.Order;

public class OrderService {

	private OrderDao orderDao = new OrderDaoImpl();

	/**
	 * 获取订单信息
	 * 
	 * @param OrderId
	 *            订单号
	 * @return 订单
	 */
	public Order getServiceOrder(String orderId){
		return orderDao.getOrder(orderId);
	}
}
