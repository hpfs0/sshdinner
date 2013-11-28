package com.dinner.gts.dao;

import java.beans.Transient;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.dinner.gts.common.CommonSqlConst;
import com.dinner.gts.common.CommonUtil;
import com.dinner.gts.model.Feedback;
import com.dinner.gts.model.Member;

public class FeedbackDaoImpl implements FeedbackDao {

    // Session初始化
    private Session session = CommonUtil.getSessionFactory().openSession();

    @Transient
    public List<Feedback> getAllFeedback() {
        SQLQuery query = session.createSQLQuery(CommonSqlConst.COMMON_SQL_008);
        query.addEntity(Member.class);
        // 设置缓存
        query.setCacheable(true);
        @SuppressWarnings("unchecked")
        List<Feedback> list = query.list();
        // session关闭
        CommonUtil.closeSession(session);
        return list;
    }

    @Transient
    public boolean putFeedback(Feedback feedback) {
        Transaction tx = null;
        if (feedback != null) {
            try {
                // 开启事务
                tx = session.beginTransaction();
                // 設置entry
                session.save(feedback);
                session.flush();
                // 提交事务
                tx.commit();
            }
            catch (HibernateException e) {
                if (tx != null) {
                    tx.rollback();
                }
                return false;
            }
            finally {
                // session关闭
                CommonUtil.closeSession(session);
            }
        }
        return true;
    }

    @Transient
    public boolean modifyFeedback(Feedback feedback) {
        Transaction tx = null;
        if (feedback != null) {
            try {
                // 开启事务
                tx = session.beginTransaction();
                session.update(feedback);
                // 提交事务
                tx.commit();
            }
            catch (HibernateException e) {
                if (tx != null) {
                    tx.rollback();
                }
                return false;
            }
            finally {
                // session关闭
                CommonUtil.closeSession(session);
            }
        }
        return true;
    }

}
