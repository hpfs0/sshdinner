package com.dinner.gts.action;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dinner.gts.common.CommonConst;
import com.dinner.gts.common.CommonGifCode;
import com.dinner.gts.common.CommonStringUtil;
import com.dinner.gts.common.CommonUtil;
import com.dinner.gts.model.Member;
import com.dinner.gts.model.Message;
import com.dinner.gts.service.MemberService;
import com.dinner.gts.service.MessageService;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {

    /**
     * VersionUID
     */
    private static final long serialVersionUID = -541681215616390859L;

    /** 会员服务类 */
    private MemberService memberService;

    /** 消息服务类 */
    private MessageService messageService;

    /**
     * 注册会员
     * 
     * @return 结果
     */
    public String execute() {
        // error信息初始化
        this.clearErrorsAndMessages();
        // 注册结果初始化
        String putResult = CommonConst.COMMON_MEMBER_REGIST_NG;
        try {
            // 取得所有输入的数据
            Member inputMember = new Member();
            getAllParam(inputMember);

            // 保存会员信息
            memberService = new MemberService();
            memberService.putServiceMember(inputMember);

            // 会员注册成功
            putResult = CommonConst.COMMON_MEMBER_REGIST_OK;
        }
        catch (Exception e) {
            // 会员注册失败
            putResult = CommonConst.COMMON_MEMBER_REGIST_NG;
        }
        finally {
            try {
                CommonUtil.getHttpServletResponse().getWriter().write(putResult);
            }
            catch (IOException e) {
                e.printStackTrace();
            }
        }

        return null;
    }

    /**
     * 获取会员注册协议
     * 
     * @return 结果
     */
    public String aquareAgreement() {
        Message messageKey = null;
        Message reusltMessage = null;
        try {
            // 获取协议检索条件
            messageKey = new Message();
            messageKey.setMessageId(CommonConst.COMMON_MESSAGE_9999);
            messageKey.setMessageType(CommonConst.COMMON_MESSAGE_TYPE_0);

            // 获取消息协议
            messageService = new MessageService();
            reusltMessage = messageService.getServiceMessageBykey(messageKey);
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            try {
                HttpServletResponse response = CommonUtil.getHttpServletResponse();
                response.setContentType("text/html; charset=utf-8");
                response.getWriter()
                        .write(reusltMessage.getMessageContent());
            }
            catch (IOException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    /**
     * 注册用户时验证用户名是否可用
     * 
     * @return 结果
     */
    public String checkUser() {
        // 初始化会员登陆状态
        int loginStatus = 0;
        // 获取request
        HttpServletRequest req = CommonUtil.getHttpServletRequest();
        // 从页面获取的用户名
        String memberLoginId = req.getParameter("username");
        // 验证结果初始化(初始为验证不通过)
        String writeResult = CommonConst.COMMON_USER_INVALID;
        if (memberLoginId != null) {
            memberService = new MemberService();
            // 根据用户名得到数据库里有没有此用户
            Member member = memberService.getServiceMemberBykey(memberLoginId);
            if (member == null) {
                // 会员帐号未被注册
                writeResult = CommonConst.COMMON_USER_VALID;
            }
            else {
                loginStatus = member.getLoginStatus();
                if (loginStatus == 1) {
                    // 会员帐号已在别处登陆
                    writeResult = CommonConst.COMMON_USER_lOGIN;
                }
                else {
                    // 会员帐号已被注册
                    writeResult = CommonConst.COMMON_USER_INVALID;
                }
            }
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
     * 将用户输入的信息封装至实体
     * 
     * @param member 待封住的实体
     */
    private void getAllParam(Member member) {
        HttpServletRequest req = CommonUtil.getHttpServletRequest();
        // 会员ID
        member.setMemberId(CommonUtil.getId(CommonConst.COMMON_ID_MEMBER));
        // 会员类型
        member.setMemberType(Integer.parseInt(req.getParameter("membertypeid")));
        // 登录帐号
        member.setMemberLoginId(req.getParameter("user"));
        // 登录密码
        member.setMemberLoginPw(CommonUtil.MD5(req.getParameter("password")));
        // 电子邮件
        member.setMemberMail(req.getParameter("email"));
        // 昵称
        member.setMemberNickName(req.getParameter("pname"));
        // 真实姓名
        member.setMemberRealName(req.getParameter("name"));
        // 公司
        member.setMemberCompany(req.getParameter("company"));
        // 固定电话
        member.setMemberTel(CommonStringUtil.convertNullToEmpty(req.getParameter("tel")));
        // 手机号码
        member.setMemberPhone(req.getParameter("mov"));
        // 注册时间
        member.setRegistTime(new Date());
        // 更新时间
        member.setUpdateTime(new Date());
    }
}
