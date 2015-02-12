package com.dinner.gts.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.dinner.gts.common.CommonUtil;
import com.dinner.gts.model.Notice;
import com.dinner.gts.service.NoticeService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @author yangdw
 */
public class IndexAction extends ActionSupport {

    /** 公告服务类 */
    private NoticeService noticeService;

    /**
     * serialVersionUID
     */
    private static final long serialVersionUID = 6992774989452237885L;

    /**
     * 获取网站公告
     */
    public String execute() {
        HttpServletResponse res = ServletActionContext.getResponse();
        noticeService = new NoticeService();
        PrintWriter out;

        List<Notice> indexPageNotices = noticeService.getServiceTopFiveNotice();

        if (indexPageNotices != null) {
            for (int i = 0; i < indexPageNotices.size(); i++) {
                res.setContentType("html/text;charset=utf-8");
                try {
                    out = res.getWriter();
                    out.println("<li class='newslist_time2'>");
                    out.println("<div class='time'>"
                            + CommonUtil.convertDateToddMM(indexPageNotices.get(i)
                                    .getRegistTime())
                            + "</div>");
                    out.println("<a href='notice?id="
                            + indexPageNotices.get(i).getNoticeId()
                            + "' class='newslist_time2'>"
                            + indexPageNotices.get(i).getNoticeHead() + "</a>");
                    out.println("</li>");
                }
                catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        return null;
    }
}
