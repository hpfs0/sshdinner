package com.dinner.gts.dao.impl;

import java.beans.Transient;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;

import com.dinner.gts.common.CommonSqlConst;
import com.dinner.gts.common.CommonUtil;
import com.dinner.gts.dao.ShopBoxDao;
import com.dinner.gts.model.ShopBox;

/**
 * @author yangdw
 */
public class ShopBoxDaoImpl implements ShopBoxDao {

    private Session session = CommonUtil.getSessionFactory().openSession();

    @Transient
    public List<ShopBox> getShopBox(ShopBox shopBox) {
        // 购物车表查询
        SQLQuery query = session.createSQLQuery(CommonSqlConst.COMMON_SQL_017);
        query.addEntity(ShopBox.class);
        // 设置参数
        query.setString(0, shopBox.getBoxId());
        query.setString(1, shopBox.getMemberId());
        query.setInteger(2, shopBox.getDeleteFlg());
        @SuppressWarnings("unchecked")
        List<ShopBox> list = query.list();
        // session关闭
        CommonUtil.closeSession(session);
        return list;
    }
}
