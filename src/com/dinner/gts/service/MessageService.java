package com.dinner.gts.service;

import java.util.List;

import com.dinner.gts.dao.MessageDao;
import com.dinner.gts.dao.MessageDaoImpl;
import com.dinner.gts.model.Message;

public class MessageService {

    private MessageDao dao = new MessageDaoImpl();

    /**
     * 获取所有消息列表
     * 
     * @return 所有消息列表
     */
    public List<Message> getServiceAllMessage() {
        if (null != dao) {
            return dao.getAllMessage();
        }
        else {
            return null;
        }
    }

    /**
     * 消息保存
     * 
     * @param message 消息
     * @return 消息保存是否成功
     */
    public boolean putServiceMessage(Message message) {
        if (null != dao && null != message) {
            return dao.putMessage(message);
        }
        else {
            return false;
        }
    }

    /**
     * 消息修改
     * 
     * @param message 消息
     * @return 消息修改是否成功
     */
    public boolean modifyServiceMessage(Message message) {
        if (null != dao && null != message) {
            return dao.modifyMessage(message);
        }
        else {
            return false;
        }
    }

    /**
     * 根据消息ID和类型获取一条消息
     * 
     * @param message 消息
     * @return 消息
     */
    public Message getServiceMessageBykey(Message message) {
        if (null != dao && null != message) {
            return dao.getMessageBykey(message);
        }
        else {
            return null;
        }
    }
}
