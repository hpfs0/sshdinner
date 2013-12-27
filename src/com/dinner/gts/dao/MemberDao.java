package com.dinner.gts.dao;

import java.util.List;

import com.dinner.gts.model.Member;

public interface MemberDao {

    /**
     * 取得member表里所有信息
     * 
     * @return member表里所有记录
     */
    public List<Member> getAllMember();

    /**
     * 根据会员帐号ID取得会员信息
     * 
     * @param memberLoginId 会员登录帐号
     * @return 会员信息
     */
    public Member getMemberBykey(String MemberId);

    /**
     * 会员表的INSERT操作
     * 
     * @param member 会员信息
     * @return insert操作成功与否
     */
    public boolean putMember(Member member);

    /**
     * 会员表的UPDATE操作
     * 
     * @param member 会员信息
     * @return update操作成功与否
     */
    public boolean modifyMember(Member member);

    /**
     * 会员信息验证
     * 
     * @param member 会员信息
     * @return update操作成功与否
     */
    public String checkMember(Member member);

    /**
     * 会员登录状态更新
     * 
     * @param member 会员信息
     * @return 更新会员登陆标识
     */
    public void updateMember(Member member);

}
