package com.dinner.gts.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;

import com.dinner.gts.common.CommonUtil;
import com.dinner.gts.model.Notice;
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
        HttpServletRequest req = CommonUtil.getHttpServletRequest();
        // 取得公告ID
        String noticeId = req.getParameter("id");
        if (StringUtils.isNotEmpty(noticeId)) {
            noticeService = new NoticeService();
            Notice target = noticeService.getNoticeById(noticeId);
            req.setAttribute("notice", target);
        }

        return SUCCESS;
    }

    public String list() {
        return null;
    }

}
