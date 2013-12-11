package com.dinner.gts.dao;

import java.beans.Transient;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.dinner.gts.common.CommonSqlConst;
import com.dinner.gts.common.CommonUtil;
import com.dinner.gts.model.Message;

public class MessageDaoImpl implements MessageDao {

    // Session初始化
    private Session session = CommonUtil.getSessionFactory().openSession();

    @Transient
    public List<Message> getAllMessage() {
        SQLQuery query = session.createSQLQuery(CommonSqlConst.COMMON_SQL_011);
        query.addEntity(Message.class);
        // 设置缓存
        query.setCacheable(true);
        @SuppressWarnings("unchecked")
        List<Message> list = query.list();
        // session关闭
        CommonUtil.closeSession(session);
        return list;
    }

    @Transient
    public boolean putMessage(Message message) {
        Transaction tx = null;
        if (message != null) {
            try {
                // 开启事务
                tx = session.beginTransaction();
                // 設置entry
                session.save(message);
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
    public boolean modifyMessage(Message message) {
        Transaction tx = null;
        if (message != null) {
            try {
                // 开启事务
                tx = session.beginTransaction();
                session.update(message);
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
    public Message getMessageBykey(Message message) {
        SQLQuery query = session.createSQLQuery(CommonSqlConst.COMMON_SQL_010);
        query.addEntity(Message.class);
        // 设置参数
        query.setString(0, message.getMessageId());
        query.setInteger(1, message.getMessageType());
        Message resultMessage = (Message) query.uniqueResult();
        // session关闭
        CommonUtil.closeSession(session);
        return resultMessage;
    }

}
