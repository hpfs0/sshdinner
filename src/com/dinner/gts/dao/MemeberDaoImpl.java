package com.dinner.gts.dao;

import java.beans.Transient;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.dinner.gts.common.CommonSqlConst;
import com.dinner.gts.common.CommonUtil;
import com.dinner.gts.model.Member;

public class MemeberDaoImpl implements MemberDao {

    // Session初始化
    private Session session = CommonUtil.getSessionFactory().openSession();

    @Transient
    public List<Member> getAllMember() {
        SQLQuery query = session.createSQLQuery(CommonSqlConst.COMMON_SQL_006);
        query.addEntity(Member.class);
        // 设置缓存
        query.setCacheable(true);
        @SuppressWarnings("unchecked")
        List<Member> list = query.list();
        // session关闭
        CommonUtil.closeSession(session);
        return list;
    }

    @Transient
    public Member getMemberBykey(String memberLoginId) {
        SQLQuery query = session.createSQLQuery(CommonSqlConst.COMMON_SQL_007);
        query.addEntity(Member.class);
        // 设置参数
        query.setString(0, memberLoginId);
        // 设置缓存
        query.setCacheable(true);
        Member member = (Member) query.uniqueResult();
        // session关闭
        CommonUtil.closeSession(session);
        return member;
    }

    @Transient
    public boolean putMember(Member member) {
        Transaction tx = null;
        if (member != null) {
            try {
                // 开启事务
                tx = session.beginTransaction();
                // 設置entry
                session.save(member);
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
    public boolean modifyMember(Member member) {
        Transaction tx = null;
        if (member != null) {
            try {
                // 开启事务
                tx = session.beginTransaction();
                session.update(member);
                // 提交事务
                tx.commit();
                // session关闭
                CommonUtil.closeSession(session);
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

	@Override
	public String checkMember(String memberLoginId) {
		return null;
	}

}
