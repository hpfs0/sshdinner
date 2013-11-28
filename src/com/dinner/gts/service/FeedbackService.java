package com.dinner.gts.service;

import java.util.List;

import com.dinner.gts.dao.FeedbackDao;
import com.dinner.gts.dao.FeedbackDaoImpl;
import com.dinner.gts.model.Feedback;

public class FeedbackService {

    private FeedbackDao dao = new FeedbackDaoImpl();

    /**
     * 获取所有反馈信息列表
     * 
     * @return 所有反馈信息列表
     */
    public List<Feedback> getServiceAllFeedback() {
        if (null != dao) {
            return dao.getAllFeedback();
        }
        else {
            return null;
        }
    }

    /**
     * 反馈信息保存
     * 
     * @param feedback 反馈信息
     * @return 反馈信息保存是否成功
     */
    public boolean putServiceFeedback(Feedback feedback) {
        if (null != dao && null != feedback) {
            return dao.putFeedback(feedback);
        }
        else {
            return false;
        }
    }

    /**
     * 反馈信息修改
     * 
     * @param feedback 反馈信息
     * @return 反馈信息修改是否成功
     */
    public boolean modifyServiceFeedback(Feedback feedback) {
        if (null != dao && null != feedback) {
            return dao.modifyFeedback(feedback);
        }
        else {
            return false;
        }
    }
}
