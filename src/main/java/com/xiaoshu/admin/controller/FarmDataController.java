package com.xiaoshu.admin.controller;

import com.xiaoshu.admin.entity.Farm;
import com.xiaoshu.admin.entity.Message;
import com.xiaoshu.admin.entity.User;
import com.xiaoshu.admin.service.FarmService;
import com.xiaoshu.admin.service.MessageService;
import com.xiaoshu.admin.service.UserService;
import com.xiaoshu.common.annotation.SysLog;
import com.xiaoshu.common.config.MySysUser;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 农田数据管理,didi
 */
@Controller
@RequestMapping("/farm/farmdata")
public class FarmDataController {

    @Autowired
    MessageService messageService;

    @Autowired
    UserService userService;

    @Autowired
    FarmService farmService;

    @GetMapping(value = "list")
    public String list(ModelMap modelMap){
        String userId=MySysUser.id();
        List<Farm> farmList=farmService.getFarmByUserId(userId);
        modelMap.put("farmList",farmList);
        return "admin/farmdata/list";
    }

    @RequiresPermissions("farm:user:list")
    @SysLog("查看农田具体数据")
    @PostMapping("list")
    public ModelMap index(ModelMap modelMap) {
        List<Message> messageListTop= messageService.selectMessageList(MySysUser.id());
        int messageListCount=messageService.selectMessageListCount(MySysUser.id());
        User currentUser=userService.findUserById(MySysUser.id());
        modelMap.put("messageListTop",messageListTop);
        modelMap.put("messageListCount",messageListCount);
        modelMap.put("currentUser",currentUser);
    return modelMap;
    }
}
