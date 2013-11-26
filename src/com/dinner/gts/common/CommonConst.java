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

    /**************************** message ***************************/
    /** 会员帐号ID为空 */
    public static final String COMMON_MESSAGE_001 = "会员帐号ID为空";

    /** 会员帐号密码为空 */
    public static final String COMMON_MESSAGE_002 = "会员帐号密码为空";

    /** 会员帐号ID错误 */
    public static final String COMMON_MESSAGE_003 = "会员帐号ID错误";

    /** 会员帐号密码错误 */
    public static final String COMMON_MESSAGE_004 = "会员帐号密码错误";

    /** 1:会员帐号未被注册 */
    public static final String COMMON_USER_VALID = "1";

    /** 2:会员帐号已经被注册 */
    public static final String COMMON_USER_INVALID = "2";

    /** OK:会员帐号注册成功 */
    public static final String COMMON_MEMBER_REGIST_OK = "OK";

    /** NG:会员帐号注册失败 */
    public static final String COMMON_MEMBER_REGIST_NG = "NG";
}
