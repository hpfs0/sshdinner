package com.dinner.gts.dao;

import java.util.List;

import com.dinner.gts.model.Feedback;

public interface FeedbackDao {

    /**
     * 取得反馈表里所有信息
     * 
     * @return member表里所有记录
     */
    public List<Feedback> getAllFeedback();

    /**
     * 根据反馈者帐号ID取得反馈信息
     * 
     * @param feedback 检索条件
     * @return 反馈信息
     */
    public List<Feedback> getFeedbackByLoginId(Feedback feedback);

    /**
     * 反馈表的INSERT操作
     * 
     * @param feedback 反馈信息
     * @return insert操作成功与否
     */
    public boolean putFeedback(Feedback feedback);

    /**
     * 反馈表的UPDATE操作
     * 
     * @param feedback 反馈信息
     * @return update操作成功与否
     */
    public boolean modifyMember(Feedback feedback);
}
