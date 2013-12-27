package com.dinner.gts.service;

import java.util.List;

import com.dinner.gts.dao.MemberDao;
import com.dinner.gts.dao.MemeberDaoImpl;
import com.dinner.gts.model.Member;

public class MemberService {

    private MemberDao dao = new MemeberDaoImpl();

    /**
     * 获取所有会员信息列表
     * 
     * @return 所有会员信息列表
     */
    public List<Member> getServiceAllMember() {
        if (null != dao) {
            return dao.getAllMember();
        }
        else {
            return null;
        }
    }

    /**
     * 根据会员登录帐号ID获取会员信息
     * 
     * @param memberLoginId 会员登录帐号
     * @return 会员信息
     */
    public Member getServiceMemberBykey(String MemberId) {
        if (null != dao && null != MemberId) {
            return dao.getMemberBykey(MemberId);
        }
        else {
            return null;
        }
    }

    /**
     * 会员信息保存
     * 
     * @param member 会员信息
     * @return 会员信息保存是否成功
     */
    public boolean putServiceMember(Member member) {
        if (null != dao && null != member) {
            return dao.putMember(member);
        }
        else {
            return false;
        }
    }

    /**
     * 会员信息修改
     * 
     * @param member 会员信息
     * @return 会员信息修改是否成功
     */
    public boolean modifyServiceMember(Member member) {
        if (null != dao && null != member) {
            return dao.modifyMember(member);
        }
        else {
            return false;
        }
    }

    /**
     * 登陆时会员信息验证
     * 
     * @param member 会员信息
     * @return 会员信息修改是否能够成功登陆系统
     */
    public String checkServiceMember(Member member) {
        if (null != dao && null != member) {
            return dao.checkMember(member);
        }
        else {
            return null;
        }
    }

    /**
     * 更新会员信息
     * 
     * @param member 会员信息
     * @return 标记该用户已经登陆系统
     */
    public void updateServiceMember(Member member) {
        if (null != dao && null != member) {
            dao.updateMember(member);
        }
    }

}
