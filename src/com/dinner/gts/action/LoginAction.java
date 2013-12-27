package com.dinner.gts.action;

import java.io.IOException;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.UnknownHostException;

import javax.servlet.http.Cookie;
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

    /** 会员登录的MAC地址 */
    String memberLoginMacId = null;

    /** 会员登录后台操作参数对象 */
    Member memberSqlDetail = new Member();

    /**
     * VersionUID
     */
    private static final long serialVersionUID = -541681215616390859L;

    public String execute() {
        // error信息初始化
        this.clearErrorsAndMessages();

        HttpServletRequest req = CommonUtil.getHttpServletRequest();
        HttpServletResponse res = CommonUtil.getHttpServletResponse();

        res.setContentType("text/html; charset=utf-8");

        // 会员帐号ID
        String memberLoginId = null;
        // 会员帐号密码
        String memberLoginPw = null;
        // 缓存（cookie）中的会员登陆状态
        String cookieLoginStatus = null;

        Cookie cookies[] = req.getCookies();
        for (int i = 0; cookies != null && i <
                cookies.length; i++) {
            if (cookies[i].getName().equals("memberLoginId")) {
                memberLoginId = cookies[i].getValue();
            }
            else if (cookies[i].getName().equals("memberLoginPw"))
            {
                memberLoginPw = cookies[i].getValue();
            }
            else if (cookies[i].getName().equals("loginStatus"))
            {
                cookieLoginStatus = cookies[i].getValue();
            }
        }

        if (memberLoginId == null) {
            // 会员帐号ID
            memberLoginId = req.getParameter("memberLoginId");
        }

        if (memberLoginPw == null) {
            // 会员帐号密码
            memberLoginPw = req.getParameter("memberLoginPw");
        }

        // 验证帐号正确性
        String pswEncryption = null;
        String pswEncryptionDb = null;
        String memberNickName = null;
        String memberLoginMacIdDb = null;
        int loginStatus = 0;

        // 会员登陆状态初始化
        String writeResult = CommonConst.COMMON_MEMBERLOGIN_NG;

        HttpSession sessionRequest = req.getSession();

        if (memberLoginPw != null) {
            // 获取加密后的密码
            pswEncryption = CommonUtil.MD5(memberLoginPw);
        }

        memberService = new MemberService();

        // 获取后台业务表中的会员信息
        Member loginMemberDetail = memberService.getServiceMemberBykey(memberLoginId);

        if (loginMemberDetail != null) {
            // 取得画面输入用户名对应的密码
            pswEncryptionDb = loginMemberDetail.getMemberLoginPw();
            // 获得该用户的昵称
            memberNickName = loginMemberDetail.getMemberNickName();
            // 获取该用户的登陆状态
            loginStatus = loginMemberDetail.getLoginStatus();
            // 获取该用户在数据库中的登陆MAC地址
            memberLoginMacIdDb = loginMemberDetail.getMemberMacAddress();

            // 把该用户的详细信息存入request中
            sessionRequest.setAttribute("memberLoginId", memberLoginId);
            sessionRequest.setAttribute("memberNickName", memberNickName);
        }

        // 取得用户的MAC地址
        InetAddress ia = null;
        try {
            // 获取本地IP对象
            ia = InetAddress.getLocalHost();
        }
        catch (UnknownHostException e1) {
            // TODO Auto-generated catch block
            e1.printStackTrace();
        }
        try {
            memberLoginMacId = getMACAddress(ia);
            System.out.println("MAC ......... " + memberLoginMacId);
        }
        catch (Exception e1) {
            // TODO Auto-generated catch block
            e1.printStackTrace();
        }

        // 用户处于未登录状态或者用户上次登陆成功后异常退出的可以正常登陆系统
        if (loginStatus == 0 || (cookieLoginStatus.equals("1")
                && (memberLoginMacIdDb == null || memberLoginMacIdDb.equals(memberLoginMacId)))) {
            // 判断登陆时输入会员信息是否正确
            if (pswEncryption != null && pswEncryption.equalsIgnoreCase(pswEncryptionDb)) {

                // 设置会员登录状态为1（1：已登录）
                loginStatus = CommonConst.COMMON_LOGINED_STATUS;

                // 设置登录后台操作的参数信息
                memberSqlDetail.setMemberId(memberLoginId);
                memberSqlDetail.setMemberMacAddress(memberLoginMacId);
                memberSqlDetail.setLoginStatus(loginStatus);

                // 登陆时更新会员登录状态
                memberService.updateServiceMember(memberSqlDetail);

                sessionRequest.setAttribute("loginStatus", loginStatus);

                // 登陆时用户名和密码可以匹配，登陆成功
                writeResult = CommonConst.COMMON_MEMBERLOGIN_OK;
            }
            else {
                // 登陆时用户名和密码不正确，登陆失败
                writeResult = CommonConst.COMMON_MEMBERLOGIN_NG;
            }
        }
        else {
            // 会员已经在别的设备上登陆，该用户不能登陆
            writeResult = CommonConst.COMMON_MEMBERLOGIN_LOGIN;
        }
        try {
            res.getWriter().write(writeResult);
        }
        catch (IOException e) {
            e.printStackTrace();
        }
        return null;

    }

    /**
     * 检查当前用户的登陆状态
     */
    public String checkLoginUserStatus() {
        HttpServletRequest req = CommonUtil.getHttpServletRequest();
        // 取得用户的MAC地址
        InetAddress ia = null;
        try {
            // 获取本地IP对象
            ia = InetAddress.getLocalHost();
        }
        catch (UnknownHostException e1) {
            // TODO Auto-generated catch block
            e1.printStackTrace();
        }
        try {
            memberLoginMacId = getMACAddress(ia);
            System.out.println("MAC ......... " + memberLoginMacId);
        }
        catch (Exception e1) {
            // TODO Auto-generated catch block
            e1.printStackTrace();
        }

        memberService = new MemberService();

        // 获取cookie中的登录状态
        String strLoginStatus = null;
        String strMemberLoginId = null;
        Cookie cookies[] = req.getCookies();
        for (int i = 0; cookies != null && i <
                cookies.length; i++) {
            if (cookies[i].getName().equals("loginStatus")) {
                strLoginStatus = cookies[i].getValue();
            }
            else if (cookies[i].getName().equals("memberLoginId"))
            {
                strMemberLoginId = cookies[i].getValue();
            }
        }

        if (strLoginStatus == null || strLoginStatus.length() == 0) {
            strLoginStatus = "0";
        }
        if (strLoginStatus.equals("1")) {
            // 登陆时更新会员登录状态
            if (strMemberLoginId != null) {
                memberSqlDetail.setMemberMacAddress(null);
                memberSqlDetail.setMemberId(strMemberLoginId);
                memberSqlDetail.setLoginStatus(CommonConst.COMMON_LOGINED_STATUS);
                memberService.updateServiceMember(memberSqlDetail);
            }
        }
        else {
            // 退出时更新会员登录状态
            if (strMemberLoginId != null) {
                memberSqlDetail.setMemberMacAddress(null);
                memberSqlDetail.setMemberId(strMemberLoginId);
                memberSqlDetail.setLoginStatus(CommonConst.COMMON_NOTLOGINED_STATUS);
                memberService.updateServiceMember(memberSqlDetail);
            }
        }
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
        // 验证码生成类
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
        if (inputCode == null) {
            writeResult = CommonConst.COMMON_CODE_CHECK_NG;
        }
        else {
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

    /**
     * 退出登陆并清理session中的内容
     * 
     * @return
     */
    public String sessionRemove() {
        // 重新获取session
        HttpServletRequest req = CommonUtil.getHttpServletRequest();
        HttpServletResponse res =
                CommonUtil.getHttpServletResponse();
        HttpSession sessionRequest = req.getSession();
        String memberLoginId = null;

        // 取得登录中的用户会员ID
        if (sessionRequest.getAttribute("memberLoginId") != null) {
            memberLoginId = sessionRequest.getAttribute("memberLoginId")
                    .toString();
        }

        memberService = new MemberService();

        // 退出时更新会员登录状态
        if (memberLoginId != null) {
            memberSqlDetail.setMemberMacAddress(null);
            memberSqlDetail.setMemberId(memberLoginId);
            memberSqlDetail.setLoginStatus(CommonConst.COMMON_NOTLOGINED_STATUS);
            memberService.updateServiceMember(memberSqlDetail);
        }

        // 清理session中原有的内容
        sessionRequest.removeAttribute("memberLoginId");
        sessionRequest.removeAttribute("memberNickName");
        // sessionRequest.removeAttribute("loginStatus");

        // 设置会员登录状态为0（0：未登录）
        int loginStatus = 0;
        sessionRequest.setAttribute("loginStatus", loginStatus);

        Cookie cookies[] = req.getCookies();
        String isRememberMsg = null;
        for (int i = 0; cookies != null && i <
                cookies.length; i++) {
            if (cookies[i].getName().equals("isRememberMsg"))
            {
                isRememberMsg = cookies[i].getValue();
            }
        }

        if (isRememberMsg != "1") {
            for (int i = 0; cookies != null && i <
                    cookies.length; i++) {
                if (cookies[i].getName().equals("loginStatus")
                        || cookies[i].getName().equals("memberLoginId")
                        || cookies[i].getName().equals("memberLoginPw")) {
                    Cookie cookie = cookies[i];
                    cookie.setMaxAge(0);
                    res.addCookie(cookie);
                }
            }
        }
        // 返回到登陆画面
        return SUCCESS;
    }

    // 获取登录用户本机的MAC地址
    private static String getMACAddress(InetAddress ia) throws Exception {
        // 获得网络接口对象（即网卡），并得到MAC地址，MAC地址存在于一个byte数组中。
        byte[] mac = NetworkInterface.getByInetAddress(ia).getHardwareAddress();

        // 下面代码是把MAC地址拼装成String
        StringBuffer sb = new StringBuffer();

        for (int i = 0; i < mac.length; i++) {
            if (i != 0) {
                sb.append("-");
            }
            // mac[i] & 0xFF 是为了把byte转化为正整数
            String s = Integer.toHexString(mac[i] & 0xFF);
            sb.append(s.length() == 1 ? 0 + s : s);
        }

        // 把字符串所有小写字母改为大写成为正规的MAC地址并返回
        return sb.toString().toUpperCase();
    }
}
