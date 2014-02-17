package com.dinner.gts.dao;

import java.beans.Transient;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.dinner.gts.common.CommonSqlConst;
import com.dinner.gts.common.CommonUtil;
import com.dinner.gts.model.Note;

public class NoteDaoImpl implements NoteDao {

	private Session session = CommonUtil.getSessionFactory().openSession();

	@Transient
	public boolean putNote(Note note) {
		Transaction tx = null;
		if (note != null) {
			try {
				// 开启事务
				tx = session.beginTransaction();
				// 设置entry
				session.save(note);
				session.flush();
				// 提交事务
				tx.commit();
			} catch (HibernateException e) {
				if (tx != null) {
					tx.rollback();
				}
				return false;
			} finally {
				// session关闭
				CommonUtil.closeSession(session);
			}
		}
		return true;
	}

	@Override
	public List<Note> getNote() {
		SQLQuery query = session.createSQLQuery(CommonSqlConst.COMMON_SQL_O14);
		query.addEntity(Note.class);
		// 设置缓存
		query.setCacheable(true);
		@SuppressWarnings("unchecked")
		List<Note> list = query.list();
		// session关闭
		CommonUtil.closeSession(session);
		return list;
	}
}
