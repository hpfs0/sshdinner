package com.dinner.gts.service;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.dinner.gts.dao.OrderDao;
import com.dinner.gts.dao.OrderDaoImpl;
import com.dinner.gts.model.Order;

/**
 * 
 * 订单服务类
 * 
 * @author jiangdp
 * 
 */
public class OrderService {

	private OrderDao orderDao = new OrderDaoImpl();

	/**
	 * 获取订单信息
	 * 
	 * @param OrderId
	 *            订单号
	 * @return 订单
	 */
	public Order getOrderInfoByOrderId(String orderId) {
		return orderDao.getOrderByOrderId(orderId);
	}

	/**
	 * 获取批量订单信息
	 * 
	 * @param order
	 *            订单信息
	 * 
	 * @return 批量订单信息
	 */
	public List<Order> getOrderList(DetachedCriteria dc) {
		return orderDao.getOrderList(dc);
	}
}
