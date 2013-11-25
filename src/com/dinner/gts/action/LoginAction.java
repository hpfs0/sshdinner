package com.dinner.gts.action;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.dinner.gts.common.CommonConst;
import com.dinner.gts.common.CommonUtil;
import com.dinner.gts.model.Member;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

    // 是否登录成功
    private boolean isSuccess;

    /**
     * VersionUID
     */
    private static final long serialVersionUID = -541681215616390859L;

    public String execute() {
        // error信息初始化
        this.clearErrorsAndMessages();

        HttpServletRequest req = CommonUtil.getHttpServletRequest();

        // 会员帐号ID
        String memberLoginId = req.getParameter("memberLoginId");

        // 会员帐号密码
        String memberLoginPw = req.getParameter("memberLoginPw");

        // 验证帐号正确性
        if (!isValid(memberLoginId, memberLoginPw)) {
            return ERROR;
        }

        return SUCCESS;
    }

    /**
     * 获取是否登录成功
     * 
     * @return
     */
    public boolean getIsSuccess() {
        return isSuccess;
    }

    private boolean isValid(String memberLoginId, String memberLoginPw) {

        boolean validResult = true;

        // 验证帐号正确性
        if (memberLoginId.length() == 0) {
            this.addFieldError("memberLoginId", CommonConst.COMMON_MESSAGE_001);
            validResult = false;
        }
        if (memberLoginPw.length() == 0) {
            this.addFieldError("memberLoginId", CommonConst.COMMON_MESSAGE_002);
            validResult = false;
        }

        SessionFactory factory = CommonUtil.getSessionFactory();
        Session session = factory.openSession();

        // 打开事务
        Transaction tx = session.beginTransaction();

        // 创建VO对象
        Member member = new Member();

        // 关闭事务
        tx.commit();

        session.close();

        if (!memberLoginId.equals("aaa")) {
            this.addFieldError("memberLoginId", CommonConst.COMMON_MESSAGE_003);
            validResult = false;
        }
        if (!memberLoginPw.equals("aaa")) {
            this.addFieldError("memberLoginId", CommonConst.COMMON_MESSAGE_004);
            validResult = false;
        }

        return validResult;
    }
}
