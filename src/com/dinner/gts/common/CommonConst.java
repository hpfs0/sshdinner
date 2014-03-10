package com.dinner.gts.common;

public interface CommonConst {

    /** 共通ID种类:会员ID */
    public static final int COMMON_ID_MEMBER = 0;

    /** 共通ID种类:菜品ID */
    public static final int COMMON_ID_FOOD = 1;

    /** 共通ID种类:固定套餐ID */
    public static final int COMMON_ID_FIXED = 2;

    /** 共通ID种类:订单ID */
    public static final int COMMON_ID_ORDER = 3;

    /** 共通ID种类:订单详细ID */
    public static final int COMMON_ID_ORDER_DETAIL = 4;

    /** 共通ID种类:反馈ID */
    public static final int COMMON_ID_FEEDBACK = 5;
    
    /** 共通ID种类:留言ID */
    public static final int COMMON_ID_NOTE = 6;

    /** 共通消息类型:提示 */
    public static final int COMMON_MESSAGE_TYPE_0 = 0;

    /** 共通消息类型:警告 */
    public static final int COMMON_MESSAGE_TYPE_1 = 1;

    /** 共通消息类型:错误 */
    public static final int COMMON_MESSAGE_TYPE_2 = 2;

    /**************************** message ***************************/
    /** 会员帐号ID为空 */
    public static final String COMMON_MESSAGE_0001 = "会员帐号ID为空";

    /** 会员帐号密码为空 */
    public static final String COMMON_MESSAGE_0002 = "会员帐号密码为空";

    /** 会员帐号ID错误 */
    public static final String COMMON_MESSAGE_0003 = "会员帐号ID错误";

    /** 会员帐号密码错误 */
    public static final String COMMON_MESSAGE_0004 = "会员帐号密码错误";

    /** 协议 */
    public static final String COMMON_MESSAGE_9999 = "MS00009999";

    /** 1:会员帐号未被注册 */
    public static final String COMMON_USER_VALID = "1";

    /** 2:会员帐号已经被注册 */
    public static final String COMMON_USER_INVALID = "2";

    /** 3:会员帐号已经处于登录状态 */
    public static final String COMMON_USER_lOGIN = "3";

    /** OK:会员帐号注册成功 */
    public static final String COMMON_MEMBER_REGIST_OK = "OK";

    /** NG:会员帐号注册失败 */
    public static final String COMMON_MEMBER_REGIST_NG = "NG";

    /** OK:验证码验证成功 */
    public static final String COMMON_CODE_CHECK_OK = "OK";

    /** NG:验证码验证失败 */
    public static final String COMMON_CODE_CHECK_NG = "NG";

    /** OK:投诉反馈成功 */
    public static final String COMMON_FEEDBACK_OK = "OK";

    /** NG:投诉反馈失败 */
    public static final String COMMON_FEEDBACK_NG = "NG";
    
    /** OK:留言成功 */
    public static final String COMMON_NOTE_OK = "OK";

    /** NG:留言失败 */
    public static final String COMMON_NOTE_NG = "NG";

    /** OK:会员登陆成功 */
    public static final String COMMON_MEMBERLOGIN_OK = "OK";

    /** NG:会员登陆失败 */
    public static final String COMMON_MEMBERLOGIN_NG = "NG";

    /** NG:会员已经登陆 */
    public static final String COMMON_MEMBERLOGIN_LOGIN = "LG";

    /** 1:会员登录状态：已登录 */
    public static final int COMMON_LOGINED_STATUS = 1;

    /** 0:会会员登录状态：未登录 */
    public static final int COMMON_NOTLOGINED_STATUS = 0;

}
