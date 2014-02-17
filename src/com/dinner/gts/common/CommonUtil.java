package com.dinner.gts.common;

import java.security.MessageDigest;

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
            case CommonConst.COMMON_ID_MEMBER:
                sql = CommonSqlConst.COMMON_SQL_001;
                break;
            // 菜品ID获取
            case CommonConst.COMMON_ID_FOOD:
                sql = CommonSqlConst.COMMON_SQL_002;
                break;
            // 固定套餐ID
            case CommonConst.COMMON_ID_FIXED:
                sql = CommonSqlConst.COMMON_SQL_003;
                break;
            // 订单ID
            case CommonConst.COMMON_ID_ORDER:
                sql = CommonSqlConst.COMMON_SQL_004;
                break;
            // 订单详细ID
            case CommonConst.COMMON_ID_ORDER_DETAIL:
                sql = CommonSqlConst.COMMON_SQL_005;
                break;
            // 反馈ID
            case CommonConst.COMMON_ID_FEEDBACK:
                sql = CommonSqlConst.COMMON_SQL_009;
                break;
            // 留言ID
            case CommonConst.COMMON_ID_NOTE:
            	sql = CommonSqlConst.COMMON_SQL_013;
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

    /**
     * md5单向加密
     * 
     * @param info 待加密字符串
     * @return 加密后的字符串
     */
    public final static String MD5(String s) {
        char hexDigits[] = {
                '0', '1', '2', '3', '4', '5', '6', '7',
                '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'
        };
        try {
            byte[] btInput = s.getBytes();
            // 获得MD5摘要算法的 MessageDigest 对象
            MessageDigest mdInst = MessageDigest.getInstance("MD5");
            // 使用指定的字节更新摘要
            mdInst.update(btInput);
            // 获得密文
            byte[] md = mdInst.digest();
            // 把密文转换成十六进制的字符串形式
            int j = md.length;
            char str[] = new char[j * 2];
            int k = 0;
            for (int i = 0; i < j; i++) {
                byte byte0 = md[i];
                str[k++] = hexDigits[byte0 >>> 4 & 0xf];
                str[k++] = hexDigits[byte0 & 0xf];
            }
            return new String(str);
        }
        catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
