package com.dinner.gts.action;

import com.dinner.gts.service.NoticeService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @author yangdw
 */
public class NoticeAction extends ActionSupport {

    /**
     * serialVersionUID
     */
    private static final long serialVersionUID = 6992774989452237885L;

    private NoticeService noticeService;

    public String execute() {
        String aa = "dsdsd";
        return SUCCESS;
    }

    public String list() {
        return null;
    }

}
