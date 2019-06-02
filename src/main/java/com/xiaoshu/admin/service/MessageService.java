package com.xiaoshu.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.xiaoshu.admin.entity.Message;

import java.util.List;

public interface MessageService extends IService<Message> {

//    void saveMesage(Message message);

    long getMessageNameCount(String name);

    /**
     * 系统传感器故障报警信息
     * @return
     */
    void  saveMessageSystem(String errorFlag);

    Message  saveMessage(Message message);

    Message getMessageById(String id);

    void updateMessage(Message message);

    void deleteMessage(Message message);

    List<Message> selectAll();

    List<Message> selectMessageList(String toUser);

    List<Message> selectAllByToUser(String toUser);

    int selectMessageListCount(String toUser);
}
