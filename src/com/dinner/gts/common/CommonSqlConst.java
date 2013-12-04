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

    /****************************** MEMBER表 ******************************/
    /** SQL:会员信息获取 */
    public static final String COMMON_SQL_006 = "SELECT MEMBER_ID,MEMBER_LOGIN_ID,MEMBER_LOGIN_PW,MEMBER_NICK_NAME,MEMBER_MAIL,MEMBER_REGISTER_IP,MEMBER_LOGIN_COUNT,MEMBER_REAL_NAME,MEMBER_TYPE,MEMBER_QQ,MEMBER_BALANCE,MEMBER_POINTS,MEMBER_TEL,MEMBER_PHONE,MEMBER_COMPANY,REGIST_TIME,UPDATE_TIME,DELETE_FLG FROM MT_MEMBER";

    /** SQL:根据会员帐号获取会员信息 */
    public static final String COMMON_SQL_007 = "SELECT MEMBER_ID,MEMBER_LOGIN_ID,MEMBER_LOGIN_PW,MEMBER_NICK_NAME,MEMBER_MAIL,MEMBER_REGISTER_IP,MEMBER_LOGIN_COUNT,MEMBER_REAL_NAME,MEMBER_TYPE,MEMBER_QQ,MEMBER_BALANCE,MEMBER_POINTS,MEMBER_TEL,MEMBER_PHONE,MEMBER_COMPANY,REGIST_TIME,UPDATE_TIME,DELETE_FLG FROM MT_MEMBER WHERE MEMBER_LOGIN_ID = ? AND DELETE_FLG = 0";

    /****************************** FEEDBACK表 ******************************/
    /** SQL:反馈信息获取 */
    public static final String COMMON_SQL_008 = "SELECT FEEDBACK_ID,FEEDBACK_LOGIN_ID,FEEDBACK_TOPIC,FEEDBACK_CONTENT,FEEDBACK_REAL_NAME,FEEDBACK_SEX,FEEDBACK_PHONE,FEEDBACK_ADRESS,REGIST_TIME,UPDATE_TIME,DELETE_FLG FROM MT_FEEDBACK";

    /****************************** MESSAGE表 ******************************/
    /** SQL:根据消息ID和类型获取一条消息 */
    public static final String COMMON_SQL_010 = "SELECT MESSAGE_ID,MESSAGE_TYPE,MESSAGE_CONTENT,REGIST_TIME,UPDATE_TIME,DELETE_FLG FROM MT_MESSAGE WHERE MESSAGE_ID = ? AND MESSAGE_TYPE = ?";

    /** SQL:消息列表获取 */
    public static final String COMMON_SQL_011 = "SELECT MESSAGE_ID,MESSAGE_TYPE,MESSAGE_CONTENT,REGIST_TIME,UPDATE_TIME,DELETE_FLG FROM MT_MESSAGE";

}
