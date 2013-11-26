package com.dinner.gts.action;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dinner.gts.common.CommonConst;
import com.dinner.gts.common.CommonGifCode;
import com.dinner.gts.common.CommonStringUtil;
import com.dinner.gts.common.CommonUtil;
import com.dinner.gts.model.Member;
import com.dinner.gts.service.MemberService;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {

    private MemberService memberService;

    /**
     * VersionUID
     */
    private static final long serialVersionUID = -541681215616390859L;

    /**
     * 注册会员
     * 
     * @return 结果
     */
    public String execute() {
        // error信息初始化
        this.clearErrorsAndMessages();
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
     * 注册用户时验证用户名是否可用
     * 
     * @return 结果
     */
    public String checkUser() {
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
                // 会员帐号已被注册
                writeResult = CommonConst.COMMON_USER_INVALID;
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
        // 登录密码 (TODO 加密方式保存至DB)
        member.setMemberLoginPw(req.getParameter("password"));
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
    }
}
