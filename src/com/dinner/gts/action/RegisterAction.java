package com.dinner.gts.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import com.dinner.gts.common.CommonConst;
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

    public String execute() {
        // error信息初始化
        this.clearErrorsAndMessages();

        // 取得所有输入的数据
        Member inputMember = new Member();
        getAllParam(inputMember);

        return SUCCESS;
    }

    /**
     * 注册用户时验证用户名是否可用
     * 
     * @return
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
                writeResult = CommonConst.COMMON_USER_VALID;
            }
            else {
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

    private void getAllParam(Member member) {
        HttpServletRequest req = CommonUtil.getHttpServletRequest();
        // 会员类型
        String memberType = req.getParameter("membertypeid");
        // 登录帐号
        String memberLoginId = req.getParameter("user");
        // 登录密码 (TODO 加密方式保存至DB)
        String memberLoginPw = req.getParameter("password");
        // 电子邮件
        String memberMail = req.getParameter("email");
    }
}
