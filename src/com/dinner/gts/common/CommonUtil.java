package com.dinner.gts.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

public class CommonUtil {

    /**
     * 获取HttpServletRequest对象
     * 
     * @return
     */
    public static HttpServletRequest getHttpServletRequest() {
        return ServletActionContext.getRequest();
    }

    /**
     * 获取HttpServletResponse对象
     * 
     * @return
     */
    public static HttpServletResponse getHttpServletResponse() {
        return ServletActionContext.getResponse();
    }

    /**
     * 获取sessionFactiory对象
     * 
     * @return
     */
    public static SessionFactory getSessionFactory() {
        Configuration configuration = null;
        ServiceRegistry serviceRegistry = null;
        SessionFactory sessionFactory = null;
        try {
            configuration = new Configuration().configure();
            serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties())
                    .buildServiceRegistry();
            sessionFactory = configuration.buildSessionFactory(serviceRegistry);
        }
        catch (Exception e) {
            e.printStackTrace();
            sessionFactory = null;
        }

        return sessionFactory;
    }

    /**
     * 共通各种ID的取得
     * 
     * @param idKind ID种类
     * @return 各种ID
     */
    public static String getId(int idKind) {
        String id = null;
        String sql = null;
        SQLQuery query = null;
        SessionFactory sessionFactory = getSessionFactory();
        Session session = sessionFactory.openSession();
        switch (idKind) {
        // 会员ID获取
            case 0:
                sql = CommonSqlConst.COMMON_SQL_001;
                break;
            // 菜品ID获取
            case 1:
                sql = CommonSqlConst.COMMON_SQL_002;
                break;
            // 固定套餐ID
            case 2:
                sql = CommonSqlConst.COMMON_SQL_003;
                break;
            // 订单ID
            case 3:
                sql = CommonSqlConst.COMMON_SQL_004;
                break;
            // 订单详细ID
            case 4:
                sql = CommonSqlConst.COMMON_SQL_005;
                break;
        }

        query = session.createSQLQuery(sql);
        id = (String) query.uniqueResult();
        // session关闭
        closeSession(session);

        return id;
    }

    /**
     * Session关闭
     * 
     * @param session 会话
     */
    public static void closeSession(Session session) {
        if (session != null && session.isOpen()) {
            session.close();
        }
    }
}
