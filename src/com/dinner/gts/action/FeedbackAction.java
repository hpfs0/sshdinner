package com.dinner.gts.action;

import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import com.dinner.gts.common.CommonConst;
import com.dinner.gts.common.CommonUtil;
import com.dinner.gts.model.Feedback;
import com.dinner.gts.service.FeedbackService;
import com.opensymphony.xwork2.ActionSupport;

public class FeedbackAction extends ActionSupport {

    /**
     * VersionUID
     */
    private static final long serialVersionUID = -541681215616390859L;

    /** 反馈服务类 */
    private FeedbackService feedbackService;

    /**
     * 提交留言
     * 
     * @return 结果
     */
    public String execute() {
        // error信息初始化
        this.clearErrorsAndMessages();
        // 反馈结果初始化
        String putResult = CommonConst.COMMON_FEEDBACK_NG;

        try {
            // 取得所有输入的数据
            Feedback inputFeedback = new Feedback();
            getAllParam(inputFeedback);

            // 保存反馈信息
            feedbackService = new FeedbackService();
            feedbackService.putServiceFeedback(inputFeedback);

            // 反馈成功
            putResult = CommonConst.COMMON_FEEDBACK_OK;

        }
        catch (Exception e) {
            // 反馈失败
            putResult = CommonConst.COMMON_FEEDBACK_NG;
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
     * 将用户输入的信息封装至实体
     * 
     * @param member 待封住的实体
     */
    private void getAllParam(Feedback feedback) {
        HttpServletRequest req = CommonUtil.getHttpServletRequest();
        // 反馈ID
        feedback.setFeedbackId(CommonUtil.getId(CommonConst.COMMON_ID_FEEDBACK));
        // 反馈者登录帐号ID
        feedback.setFeedbackLoginId(req.getParameter("loginid"));
        // 标题
        feedback.setFeedbackTopic(req.getParameter("title"));
        // 投诉建议
        feedback.setFeedbackContent(req.getParameter("content"));
        // 真实姓名
        feedback.setFeedbackRealName(req.getParameter("name"));
        // 性别
        feedback.setFeedbackSex(Integer.parseInt(req.getParameter("sex")));
        // 联系电话
        feedback.setFeedbackPhone(req.getParameter("tel"));
        // 联系地址
        feedback.setFeedbackAdress(req.getParameter("address"));
        // 注册时间
        feedback.setRegistTime(new Date());
        // 更新时间
        feedback.setUpdateTime(new Date());
    }

    public String toAdvise() {
        return SUCCESS;
    }
}
