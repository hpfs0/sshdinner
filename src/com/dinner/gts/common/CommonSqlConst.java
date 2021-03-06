package com.dinner.gts.common;

public interface CommonSqlConst {

    /** SQL:会员ID获取 */
    public static final String COMMON_SQL_001 = "SELECT IFNULL(CONCAT('M',LPAD((REPLACE(MAX(MEMBER_ID),'M','0') + 1),9,'0')),'M000000001') AS ID FROM MT_MEMBER";

    /** SQL:菜品ID获取 */
    public static final String COMMON_SQL_002 = "SELECT IFNULL(CONCAT('F',LPAD((REPLACE(MAX(FOOD_ID),'F','0') + 1),9,'0')),'F000000001') AS ID FROM MT_FREE_FOOD";

    /** SQL:固定套餐ID获取 */
    public static final String COMMON_SQL_003 = "SELECT IFNULL(CONCAT('FP',LPAD((REPLACE(MAX(FIXED_ID),'FP','0') + 1),8,'0')),'FP00000001') AS ID FROM MT_FIXED_PACKAGE";

    /** SQL:订单ID获取 */
    public static final String COMMON_SQL_004 = "SELECT IFNULL(CONCAT('O',LPAD((REPLACE(MAX(ORDER_ID),'O','0') + 1),9,'0')),'O000000001') AS ID FROM MT_ORDER";

    /** SQL:订单详细ID获取 */
    public static final String COMMON_SQL_005 = "SELECT IFNULL(CONCAT('OD',LPAD((REPLACE(MAX(ORDER_DETAIL_ID),'OD','0') + 1),8,'0')),'OD00000001') AS ID FROM MT_ORDER_DETAIL";

    /** SQL:反馈ID获取 */
    public static final String COMMON_SQL_009 = "SELECT IFNULL(CONCAT('K',LPAD((REPLACE(MAX(FEEDBACK_ID),'K','0') + 1),9,'0')),'K000000001') AS ID FROM MT_FEEDBACK";

    /** SQL:留言ID获取 */
    public static final String COMMON_SQL_013 = "SELECT IFNULL(CONCAT('NT',LPAD((REPLACE(MAX(NOTE_ID),'NT','0') + 1),8,'0')),'NT00000001') AS ID FROM MT_NOTE";

    /** SQL:公告ID获取 */
    public static final String COMMON_SQL_019 = "SELECT IFNULL(CONCAT('N',LPAD((REPLACE(MAX(FEEDBACK_ID),'N','0') + 1),9,'0')),'N000000001') AS ID FROM TT_NOTICE";

    /****************************** MEMBER表 ******************************/
    /** SQL:会员信息获取 */
    public static final String COMMON_SQL_006 = "SELECT MEMBER_ID,MEMBER_LOGIN_ID,MEMBER_LOGIN_PW,MEMBER_NICK_NAME,MEMBER_MAIL,MEMBER_REGISTER_IP,MEMBER_LOGIN_MACADDRESS,MEMBER_LOGIN_COUNT,MEMBER_REAL_NAME,MEMBER_TYPE,MEMBER_QQ,MEMBER_BALANCE,MEMBER_POINTS,MEMBER_TEL,MEMBER_PHONE,MEMBER_COMPANY,REGIST_TIME,UPDATE_TIME,DELETE_FLG,LOGIN_STATUS FROM MT_MEMBER";

    /** SQL:根据会员帐号获取会员信息 */
    public static final String COMMON_SQL_007 = "SELECT MEMBER_ID,MEMBER_LOGIN_ID,MEMBER_LOGIN_PW,MEMBER_NICK_NAME,MEMBER_MAIL,MEMBER_REGISTER_IP,MEMBER_LOGIN_MACADDRESS,MEMBER_LOGIN_COUNT,MEMBER_REAL_NAME,MEMBER_TYPE,MEMBER_QQ,MEMBER_BALANCE,MEMBER_POINTS,MEMBER_TEL,MEMBER_PHONE,MEMBER_COMPANY,REGIST_TIME,UPDATE_TIME,DELETE_FLG,LOGIN_STATUS FROM MT_MEMBER WHERE MEMBER_LOGIN_ID = ? AND DELETE_FLG = 0";

    /** SQL:会员登陆时，更新会员登陆状态 */
    public static final String COMMON_SQL_012 = "UPDATE MT_MEMBER SET LOGIN_STATUS = ?, MEMBER_LOGIN_MACADDRESS = ? WHERE MEMBER_LOGIN_ID = ?";

    /****************************** FEEDBACK表 ******************************/
    /** SQL:反馈信息获取 */
    public static final String COMMON_SQL_008 = "SELECT FEEDBACK_ID,FEEDBACK_LOGIN_ID,FEEDBACK_TOPIC,FEEDBACK_CONTENT,FEEDBACK_REAL_NAME,FEEDBACK_SEX,FEEDBACK_PHONE,FEEDBACK_ADRESS,REGIST_TIME,UPDATE_TIME,DELETE_FLG FROM MT_FEEDBACK";

    /****************************** MESSAGE表 ******************************/
    /** SQL:根据消息ID和类型获取一条消息 */
    public static final String COMMON_SQL_010 = "SELECT MESSAGE_ID,MESSAGE_TYPE,MESSAGE_CONTENT,REGIST_TIME,UPDATE_TIME,DELETE_FLG FROM MT_MESSAGE WHERE MESSAGE_ID = ? AND MESSAGE_TYPE = ?";

    /** SQL:消息列表获取 */
    public static final String COMMON_SQL_011 = "SELECT MESSAGE_ID,MESSAGE_TYPE,MESSAGE_CONTENT,REGIST_TIME,UPDATE_TIME,DELETE_FLG FROM MT_MESSAGE";

    /****************************** Note表 ******************************/
    /** SQL:留言信息获取 */
    public static final String COMMON_SQL_014 = "SELECT NOTE_ID,NOTE_TOPIC,NOTE_CONTENT,NOTE_LOGIN_ID,NOTE_REAL_NAME,NOTE_MAIL,NOTE_QQ,NOTE_PERSONAL_HOME_PAGE,NOTE_MOOD,NOTE_SECRET,NOTE_TIME,UPDATE_TIME,DELETE_FLG FROM MT_NOTE";
    /****************************** 自选菜品表 ******************************/
    public static final String COMMON_SQL_015 = "SELECT FOOD_ID,FOOD_NAME,FOOD_UNIT_PRICE,FOOD_MEMBER_PRICE,FOOD_CUISINE_KIND,FOOD_PUNGENCY_DEGREE,FOOD_STOCK,FOOD_PHOTO_URLPATH,FOOD_SALES_COPIES,PREFERENTIAL_STATUS,PREFERENTIAL_PRICE"
            + ",PREFERENTIAL_START_TIME,PREFERENTIAL_END_TIME,REGIST_TIME,UPDATE_TIME,DELETE_FLG FROM MT_FREE_FOOD WHERE FOOD_NAME LIKE ? AND FOOD_MEMBER_PRICE >= ? AND FOOD_MEMBER_PRICE <= ? AND PREFERENTIAL_STATUS = ? AND FOOD_CUISINE_KIND = ? AND FOOD_PUNGENCY_DEGREE = ?";

    /****************************** 订单表 ******************************/
    public static final String COMMON_SQL_016 = "SELECT ORDER_ID, ORDER_TYPE,ORDER_MEMBER_ID,ORDER_PRICE,REGIST_TIME,UPDATE_TIME, DELETE_FLG FROM MT_ORDER WHERE ORDER_ID = ?";

    /****************************** 购物车表 ******************************/
    public static final String COMMON_SQL_017 = "SELECT MEMBER_ID, FOOD_ID, BUY_COUNT FROM TT_SHOP_BOX WHERE BOX_ID = ? AND MEMBER_ID = ? AND BOX_STAUTS = 1 AND TO_DAYS(NOW()) - TO_DAYS(UPDATE_TIME) <= 7 AND DELETE_FLG = ?";

    /****************************** 公告板表 ******************************/
    /** SQL:公告列表获取 */
    public static final String COMMON_SQL_018 = "SELECT NOTICE_ID, NOTICE_HEAD, NOTICE_CONTENT, REGIST_TIME, UPDATE_TIME, DELETE_FLG FROM TT_NOTICE WHERE DELETE_FLG = 0";

    /** SQL:公告列表获取 TOP5 */
    public static final String COMMON_SQL_020 = "SELECT NOTICE_ID, NOTICE_HEAD, NOTICE_CONTENT, REGIST_TIME, UPDATE_TIME, DELETE_FLG FROM TT_NOTICE WHERE DELETE_FLG = 0";

    /** SQL:根据公告ID获取一条公告 */
    public static final String COMMON_SQL_021 = "SELECT NOTICE_ID, NOTICE_HEAD, NOTICE_CONTENT, REGIST_TIME, UPDATE_TIME, DELETE_FLG FROM TT_NOTICE WHERE NOTICE_ID = ? AND DELETE_FLG = 0";
}
