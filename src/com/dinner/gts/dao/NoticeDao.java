package com.dinner.gts.dao;

import java.util.List;

import com.dinner.gts.model.Notice;

/**
 * @author yangdw
 */
public interface NoticeDao {

    /**
     * 取得公告板表中所有信息
     * 
     * @return 公告板记录
     */
    public List<Notice> getAllNotice();

    /**
     * 取得公告板表中最新的5条公告
     * 
     * @return 公告板最新5条记录
     */
    public List<Notice> getTopFiveNotice();

    /**
     * 由指定ID获取公告
     * 
     * @return 指定ID的公告记录
     */
    public Notice getNoticeById(String NoticeId);
}
