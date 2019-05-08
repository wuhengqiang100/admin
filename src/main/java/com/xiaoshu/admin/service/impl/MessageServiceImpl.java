package com.xiaoshu.admin.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xiaoshu.admin.entity.Message;
import com.xiaoshu.admin.entity.User;
import com.xiaoshu.admin.mapper.MessageMapper;
import com.xiaoshu.admin.service.MessageService;
import com.xiaoshu.admin.service.UserService;
import com.xiaoshu.common.config.MySysUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service
@Transactional(rollbackFor = Exception.class)
public class MessageServiceImpl extends ServiceImpl<MessageMapper, Message> implements MessageService {


    /**
     * 获得同一农田名字的数目
     * @param name
     * @return
     */
    @Override
    public long getMessageNameCount(String name) {
        QueryWrapper<Message> wrapper = new QueryWrapper<>();
        wrapper.eq("name",name);
        return baseMapper.selectCount(wrapper);
    }

    @Autowired
    UserService userService;
    @Override
    @Transactional(rollbackFor = Exception.class)
    public Message saveMessage(Message message) {
        message.setLooked("未读");
        User toUserEn=userService.findUserById(message.getToUser());
        message.setCreateId(MySysUser.id());
        message.setCreateDate(new Date());
        message.setUpdateDate(new Date());
        message.setUpdateId(MySysUser.id());
        message.setCreateName(toUserEn.getNickName());
        message.setToUser(message.getToUser());
        baseMapper.insert(message);
        return message;
    }


    @Override
    public Message getMessageById(String id) {
        return baseMapper.selectMessageById(id);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void updateMessage(Message message) {
        baseMapper.updateById(message);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void deleteMessage(Message message) {
        message.setDelFlag(true);
        baseMapper.updateById(message);
    }

    @Override
    public List<Message> selectAll() {
        QueryWrapper wrapper = new QueryWrapper();
//        wrapper.eq("del_flag",false);
        return baseMapper.selectList(wrapper);
    }

    @Override
    public List<Message> selectMessageList(String toUser) {
        return baseMapper.selectMessageList(toUser);
    }

    @Override
    public List<Message> selectAllByToUser(String toUser) {
        return baseMapper.selectMessageList(toUser);
    }

    @Override
    public int selectMessageListCount(String toUser) {
        return baseMapper.selectMessageListCount(toUser);
    }
}
