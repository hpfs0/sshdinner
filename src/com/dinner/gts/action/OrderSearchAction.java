package com.dinner.gts.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import com.dinner.gts.common.CommonStringUtil;
import com.dinner.gts.common.CommonUtil;
import com.dinner.gts.model.Order;
import com.dinner.gts.service.OrderService;
import com.opensymphony.xwork2.ActionSupport;

/***
 * 
 * 订单Action
 * 
 * @author jiangdp
 * 
 */
public class OrderSearchAction extends ActionSupport {

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 6992774989452237885L;

	/**
	 * reqest
	 */
	HttpServletRequest request = CommonUtil.getHttpServletRequest();

	/**
	 * 获取订单信息类
	 */
	private OrderService orderService;
	
	private List<Order> orderList;
	

	public List<Order> getOrderList() {
		return orderList;
	}

	public void setOrderList(List<Order> orderList) {
		this.orderList = orderList;
	}

	public String execute() {
		return null;
	}

	/**
	 * 根据订单ID获取订单信息
	 */
	public String getOrderInfoByOrderId() {
		// 订单信息类实例化
		orderService = new OrderService();

		// 订单ID
		String orderId = request.getParameter("orderId");

		// 订单信息取得
		Order orderInfo = orderService.getOrderInfoByOrderId(orderId);

		// 返回订单信息
		request.setAttribute("order", orderInfo);
		return SUCCESS;
	}

	/***
	 * 多条件获取订单信息
	 */
	public String getOrderInfo() {
		// 订单信息类实例化
		orderService = new OrderService();

		// 订单ID
		String orderId = request.getParameter("orderId");
		// 订单期间From
		String orderDateFrom = request.getParameter("orderDateFrom");
		// 订单期间To
		String orderDateTo = request.getParameter("orderDateTo");
//		// 配送状态
//		String deliveryState = request.getParameter("deliveryState");
//		// 处理状态
//		String processState = request.getParameter("processState");

		// 利用DetachedCriteria实现动态查询
		DetachedCriteria dc = DetachedCriteria.forClass(Order.class);
		if (CommonStringUtil.isNotEmpty(orderId)) {
			dc.add(Restrictions.eq("orderId", orderId));
		}
		if (CommonStringUtil.isNotEmpty(orderDateFrom)) {
			dc.add(Restrictions.ge("updateTime",
					CommonStringUtil.stringToDate(orderDateFrom, "YYYY-MM-DD")));
		}
		if (CommonStringUtil.isNotEmpty(orderDateTo)) {
			dc.add(Restrictions.le("updateTime",
					CommonStringUtil.stringToDate(orderDateTo, "YYYY-MM-DD")));
		}
		// 下面两个待定
//		if (CommonStringUtil.isNotEmpty(deliveryState)) {
//			dc.add(Restrictions.eq("deliveryState", deliveryState));
//		}
//		if (CommonStringUtil.isNotEmpty(processState)) {
//			dc.add(Restrictions.eq("processState", processState));
//		}

		// 订单信息取得
		orderList= orderService.getOrderList(dc);

		return SUCCESS;
	}
	
}
