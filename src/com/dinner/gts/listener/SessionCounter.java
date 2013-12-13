package com.dinner.gts.listener;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import com.dinner.gts.service.MemberService;

public class SessionCounter implements HttpSessionListener {

    /** 会员服务类 */
    private MemberService memberService;

    // session创建事件
    @Override
    public void sessionCreated(HttpSessionEvent arg0) {
        // TODO Auto-generated method stub

    }

    // session失效事件
    public void sessionDestroyed(HttpSessionEvent se) {
        String memberLoginId = null;
        HttpSession session = se.getSession();
        if (session.getAttribute("memberLoginId") != null) {
            memberLoginId =
                    session.getAttribute("memberLoginId").toString();
        }
        memberService = new MemberService();

        // 未退出并且长时间未登录网页时更新会员登录状态为未登录
        if (memberLoginId != null) {
            memberService.updateServiceMemberWhenLogOut(memberLoginId);
        }

        // 清理该用户的缓存信息
        session.removeAttribute("memberLoginId");
        session.removeAttribute("memberNickName");

    }
}
