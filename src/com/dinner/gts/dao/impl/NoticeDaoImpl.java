package com.dinner.gts.dao.impl;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;

import com.dinner.gts.common.CommonSqlConst;
import com.dinner.gts.common.CommonUtil;
import com.dinner.gts.dao.NoticeDao;
import com.dinner.gts.model.Notice;

/**
 * @author yangdw
 */
public class NoticeDaoImpl implements NoticeDao {

    private Session session = CommonUtil.getSessionFactory().openSession();

    @Override
    public List<Notice> getAllNotice() {
        SQLQuery query = session.createSQLQuery(CommonSqlConst.COMMON_SQL_018);
        query.addEntity(Notice.class);
        // 设置缓存
        query.setCacheable(true);
        @SuppressWarnings("unchecked")
        List<Notice> list = query.list();
        // session关闭
        CommonUtil.closeSession(session);
        return list;
    }
}
