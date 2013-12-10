package com.dinner.gts.dao;

import java.util.List;

import com.dinner.gts.model.Message;

public interface MessageDao {

    /**
     * 取得消息表里所有信息
     * 
     * @return member表里所有记录
     */
    public List<Message> getAllMessage();

    /**
     * 根据消息ID和类型获取一条消息
     * 
     * @param message 消息
     * @return 消息
     */
    public Message getMessageBykey(Message message);

    /**
     * 消息表的INSERT操作
     * 
     * @param message 消息
     * @return insert操作成功与否
     */
    public boolean putMessage(Message message);

    /**
     * 消息表的UPDATE操作
     * 
     * @param message 消息
     * @return update操作成功与否
     */
    public boolean modifyMessage(Message message);
}
