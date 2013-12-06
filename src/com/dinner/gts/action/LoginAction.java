package com.dinner.gts.action;

import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.dinner.gts.common.CommonConst;
import com.dinner.gts.common.CommonStringUtil;
import com.dinner.gts.common.CommonUtil;
import com.dinner.gts.model.Member;
import com.dinner.gts.service.MemberService;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

    // 是否登录成功
    private boolean isSuccess;
    
    /** 会员服务类 */
    private MemberService memberService;

    /**
     * VersionUID
     */
    private static final long serialVersionUID = -541681215616390859L;

    public String execute() {
    	// 会员登陆状态初始化
    	String writeResult = CommonConst.COMMON_MEMBERLOGIN_NG;
        // error信息初始化
        this.clearErrorsAndMessages();

        HttpServletRequest req = CommonUtil.getHttpServletRequest();
        HttpSession session = req.getSession();

        // 会员帐号ID
        String memberLoginId = req.getParameter("memberLoginId");

        // 会员帐号密码
        String memberLoginPw = req.getParameter("memberLoginPw");

        // 验证帐号正确性
        if (!isValid(memberLoginId, memberLoginPw)) {
            return ERROR;
        }
        
        // session中保存的验证
        session.setAttribute("memberLoginId", memberLoginId);
        
        
        // 获取加密后的密码
        String pswEncryption = CommonUtil.MD5(memberLoginPw);
        
        // 获取后台业务表中的会员信息
        String pswEncryptionDb = memberService.checkServiceMember(memberLoginId);
        
        // 判断登陆时输入会员信息是否正确
        if(pswEncryption.equals(pswEncryptionDb)){
        	writeResult = CommonConst.COMMON_MEMBERLOGIN_OK;
        } else {
        	writeResult = CommonConst.COMMON_MEMBERLOGIN_NG;
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
            this.addFieldError("memberLoginId", CommonConst.COMMON_MESSAGE_0001);
            validResult = false;
        }
        if (memberLoginPw.length() == 0) {
            this.addFieldError("memberLoginId", CommonConst.COMMON_MESSAGE_0002);
            validResult = false;
        }

        SessionFactory factory = CommonUtil.getSessionFactory();
        Session session = factory.openSession();

        // 打开事务
        Transaction tx = session.beginTransaction();

        // 创建VO对象
        // Member member = new Member();

        // 关闭事务
        tx.commit();

        session.close();

        if (!memberLoginId.equals("aaa")) {
            this.addFieldError("memberLoginId", CommonConst.COMMON_MESSAGE_0003);
            validResult = false;
        }
        if (!memberLoginPw.equals("aaa")) {
            this.addFieldError("memberLoginId", CommonConst.COMMON_MESSAGE_0004);
            validResult = false;
        }

        return validResult;
    }
    
}
