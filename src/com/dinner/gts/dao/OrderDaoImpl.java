package com.dinner.gts.dao;

import java.beans.Transient;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.criterion.DetachedCriteria;

import com.dinner.gts.common.CommonSqlConst;
import com.dinner.gts.common.CommonUtil;
import com.dinner.gts.model.Order;

/**
 * 
 * 订单类
 * 
 * @author jiangdp
 * 
 */

public class OrderDaoImpl implements OrderDao {

	private Session session = CommonUtil.getSessionFactory().openSession();

	/***
	 * 订单表查询
	 * 
	 * @param orderId
	 *            订单ID
	 */
	@Transient
	public Order getOrderByOrderId(String orderId) {
		// 订单表查询
		SQLQuery query = session.createSQLQuery(CommonSqlConst.COMMON_SQL_016);
		query.addEntity(Order.class);
		// 设置参数
		query.setString(0, orderId);
		Order resultOrder = (Order) query.uniqueResult();
		// session关闭
		CommonUtil.closeSession(session);
		return resultOrder;
	}

	/***
	 * 订单表查询
	 * 
	 * 利用D​e​t​a​c​h​e​d​C​r​i​t​e​r​i​a实现动态查询
	 * 
	 * @param dc
	 */
	@Transient
	@SuppressWarnings("unchecked")
	public List<Order> getOrderList(DetachedCriteria dc) {
		// ----------
		Criteria c = dc.getExecutableCriteria(session);
		List<Order> rs = c.list();
		// session关闭
		CommonUtil.closeSession(session);
		return rs;
	}

}
