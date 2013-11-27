package com.dinner.gts.action;

import com.opensymphony.xwork2.ActionSupport;

public class FeedbackAction extends ActionSupport {

    /**
     * VersionUID
     */
    private static final long serialVersionUID = -541681215616390859L;

    /**
     * 提交留言
     * 
     * @return 结果
     */
    public String execute() {
        // error信息初始化
        this.clearErrorsAndMessages();
        return null;
    }

}
