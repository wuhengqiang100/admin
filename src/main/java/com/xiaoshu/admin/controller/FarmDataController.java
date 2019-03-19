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
 * 农田数据管理
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

    /**
     * 获取所有的农田数据
     * 包括温度,湿度,光照
     * 跳转页面
     * @param modelMap
     * @return
     */
    @RequiresPermissions("farm:farmdata:list")
    @SysLog("查看农田数据所有数据")
    @GetMapping(value = "list")
    public String list(ModelMap modelMap){
        String userId=MySysUser.id();
        List<Farm> farmList=farmService.getFarmByUserId(userId);
        modelMap.put("farmList",farmList);
        return "admin/farmdata/list";
    }



    @RequiresPermissions("farm:farmdata:list")
    @SysLog("查看农田具体数据")
    @PostMapping("list")
    public ModelMap listAll(ModelMap modelMap) {
        List<Message> messageListTop= messageService.selectMessageList(MySysUser.id());
        int messageListCount=messageService.selectMessageListCount(MySysUser.id());
        User currentUser=userService.findUserById(MySysUser.id());
        modelMap.put("messageListTop",messageListTop);
        modelMap.put("messageListCount",messageListCount);
        modelMap.put("currentUser",currentUser);
    return modelMap;
    }

    /**
     * 农田温度管理数据
     * 跳转页面
     * @param modelMap
     * @return
     */
    @RequiresPermissions("farm:farmdata:temper")
    @SysLog("查看农田温度数据")
    @GetMapping(value = "temper")
    public String temper(ModelMap modelMap){
        String userId=MySysUser.id();
        List<Farm> farmList=farmService.getFarmByUserId(userId);
        modelMap.put("farmList",farmList);
        return "admin/farmdata/temper";
    }

    @RequiresPermissions("farm:farmdata:temper")
    @SysLog("查看农田具体数据")
    @PostMapping("temper")
    public ModelMap temperAll(ModelMap modelMap) {
        List<Message> messageListTop= messageService.selectMessageList(MySysUser.id());
        int messageListCount=messageService.selectMessageListCount(MySysUser.id());
        User currentUser=userService.findUserById(MySysUser.id());
        modelMap.put("messageListTop",messageListTop);
        modelMap.put("messageListCount",messageListCount);
        modelMap.put("currentUser",currentUser);
        return modelMap;
    }

    /**
     * 农田温度管理数据
     * 跳转页面
     * @param modelMap
     * @return
     */
    @RequiresPermissions("farm:farmdata:hum")
    @SysLog("查看农田湿度数据")
    @GetMapping(value = "hum")
    public String hum(ModelMap modelMap){
        String userId=MySysUser.id();
        List<Farm> farmList=farmService.getFarmByUserId(userId);
        modelMap.put("farmList",farmList);
        return "admin/farmdata/hum";
    }

    @RequiresPermissions("farm:farmdata:hum")
    @SysLog("查看农田具体湿度数据")
    @PostMapping("hum")
    public ModelMap humAll(ModelMap modelMap) {
        List<Message> messageListTop= messageService.selectMessageList(MySysUser.id());
        int messageListCount=messageService.selectMessageListCount(MySysUser.id());
        User currentUser=userService.findUserById(MySysUser.id());
        modelMap.put("messageListTop",messageListTop);
        modelMap.put("messageListCount",messageListCount);
        modelMap.put("currentUser",currentUser);
        return modelMap;
    }


    /**
     * 农田温度管理数据
     * 跳转页面
     * @param modelMap
     * @return
     */
    @RequiresPermissions("farm:farmdata:sun")
    @SysLog("查看农田光照数据")
    @GetMapping(value = "sun")
    public String sun(ModelMap modelMap){
        String userId=MySysUser.id();
        List<Farm> farmList=farmService.getFarmByUserId(userId);
        modelMap.put("farmList",farmList);
        return "admin/farmdata/sun";
    }

    @RequiresPermissions("farm:farmdata:sun")
    @SysLog("查看农田具体光照数据")
    @PostMapping("sun")
    public ModelMap sunAll(ModelMap modelMap) {
        List<Message> messageListTop= messageService.selectMessageList(MySysUser.id());
        int messageListCount=messageService.selectMessageListCount(MySysUser.id());
        User currentUser=userService.findUserById(MySysUser.id());
        modelMap.put("messageListTop",messageListTop);
        modelMap.put("messageListCount",messageListCount);
        modelMap.put("currentUser",currentUser);
        return modelMap;
    }

}
