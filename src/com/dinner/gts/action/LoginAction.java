package com.dinner.gts.action;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dinner.gts.common.CommonConst;
import com.dinner.gts.common.CommonGifCode;
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
        // error信息初始化
        this.clearErrorsAndMessages();

        HttpServletRequest req = CommonUtil.getHttpServletRequest();
        HttpSession session = req.getSession();

        CommonUtil.getHttpServletResponse().setContentType("text/html; charset=utf-8");

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

        return SUCCESS;
    }

    /**
     * 生成动态验证码
     * 
     * @return 结果
     */
    public String createGitCode() {
        HttpServletRequest req = CommonUtil.getHttpServletRequest();
        HttpServletResponse res = CommonUtil.getHttpServletResponse();
        HttpSession session = req.getSession();
        // gif生成类
        CommonGifCode commonGifCode = new CommonGifCode();
        // 保存生成的验证码字符
        String[] code = null;
        // 传送至前台
        String codeSession = "";
        OutputStream os = null;
        try {
            os = res.getOutputStream();
            code = commonGifCode.myTest(os);
            for (String temp : code) {
                codeSession += temp;
            }
            os.close();
            session.setAttribute("gifcode", codeSession);
        }
        catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 检查用户输入的验证码是否正确
     * 
     * @return
     */
    public String checkGifcode() {
        HttpServletRequest req = CommonUtil.getHttpServletRequest();
        HttpSession session = req.getSession();
        String writeResult = CommonConst.COMMON_CODE_CHECK_NG;
        // 获取用户输入的验证码
        String inputCode = req.getParameter("inputCode");
        // session中保存的验证
        String sessionCode = session.getAttribute("gifcode").toString();
        if (inputCode.equalsIgnoreCase(sessionCode)) {
            writeResult = CommonConst.COMMON_CODE_CHECK_OK;
        }
        else {
            writeResult = CommonConst.COMMON_CODE_CHECK_NG;
        }
        try {
            CommonUtil.getHttpServletResponse().getWriter().write(writeResult);
        }
        catch (IOException e) {
            e.printStackTrace();
        }
        return null;
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
        // 会员登陆状态初始化
        String writeResult = CommonConst.COMMON_MEMBERLOGIN_NG;

        HttpServletRequest req = CommonUtil.getHttpServletRequest();
        HttpSession sessionRequest = req.getSession();

        // 获取加密后的密码
        String pswEncryption = CommonUtil.MD5(memberLoginPw);

        memberService = new MemberService();

        // 获取后台业务表中的会员信息
        Member loginMemberDetail = memberService.getServiceMemberBykey(memberLoginId);

        // 取得画面输入用户名对应的密码
        String pswEncryptionDb = loginMemberDetail.getMemberLoginPw();
        // 获得该用户的昵称
        String memberNickName = loginMemberDetail.getMemberNickName();

        // 把该用户的详细信息存入request中
        sessionRequest.setAttribute("memberLoginId", memberLoginId);
        sessionRequest.setAttribute("memberNickName", memberNickName);

        // 判断登陆时输入会员信息是否正确
        if (pswEncryption.equalsIgnoreCase(pswEncryptionDb)) {

            // 登陆时更新会员登录状态
            memberService.updateServiceMember(memberLoginId);
            // 设置会员登录状态为1（1：已登录）
            int loginStatus = 1;

            sessionRequest.setAttribute("loginStatus", loginStatus);

            // 登陆时用户名和密码可以匹配，登陆成功
            writeResult = CommonConst.COMMON_CODE_CHECK_OK;
        }
        else {
            // 登陆时用户名和密码不正确，登陆失败
            writeResult = CommonConst.COMMON_CODE_CHECK_NG;
        }
        try {
            CommonUtil.getHttpServletResponse().getWriter().write(writeResult);
        }
        catch (IOException e) {
            e.printStackTrace();
        }

        return validResult;
    }

    /**
     * 退出登陆并清理session中的内容
     * 
     * @return
     */
    public void sessionRemove() {
        // 重新获取session
        HttpServletRequest req = CommonUtil.getHttpServletRequest();
        HttpSession sessionRequest = req.getSession();

        // 清理session中原有的内容
        sessionRequest.removeAttribute("memberLoginId");
        sessionRequest.removeAttribute("memberNickName");
        sessionRequest.removeAttribute("loginStatus");
    }

}
