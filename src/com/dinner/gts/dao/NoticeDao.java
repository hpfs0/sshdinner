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
}
