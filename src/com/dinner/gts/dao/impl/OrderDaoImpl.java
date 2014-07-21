package com.dinner.gts.dao.impl;

import java.beans.Transient;

import org.hibernate.SQLQuery;
import org.hibernate.Session;

import com.dinner.gts.common.CommonSqlConst;
import com.dinner.gts.common.CommonUtil;
import com.dinner.gts.dao.OrderDao;
import com.dinner.gts.model.Order;

public class OrderDaoImpl implements OrderDao {

	private Session session = CommonUtil.getSessionFactory().openSession();

	@Transient
	public Order getOrder(String orderId) {
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

}
