package com.dinner.gts.service;

import java.util.List;

import com.dinner.gts.dao.NoticeDao;
import com.dinner.gts.dao.impl.NoticeDaoImpl;
import com.dinner.gts.model.Notice;

/**
 * @author yangdw
 */
public class NoticeService {

    private NoticeDao noticeDao = new NoticeDaoImpl();

    /**
     * 获取公告TOP5列表
     * 
     * @return 公告TOP5列表
     */
    public List<Notice> getServiceTopFiveNotice() {
        return noticeDao.getTopFiveNotice();
    }
}
