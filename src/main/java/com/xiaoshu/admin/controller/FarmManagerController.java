package com.xiaoshu.admin.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xiaoshu.admin.entity.FarmManager;
import com.xiaoshu.admin.entity.FarmManagerCount;
import com.xiaoshu.admin.entity.Message;
import com.xiaoshu.admin.entity.User;
import com.xiaoshu.admin.service.FarmManagerService;
import com.xiaoshu.admin.service.FarmService;
import com.xiaoshu.admin.service.MessageService;
import com.xiaoshu.admin.service.UserService;
import com.xiaoshu.common.annotation.SysLog;
import com.xiaoshu.common.base.PageData;
import com.xiaoshu.common.config.MySysUser;
import com.xiaoshu.common.util.FarmManagerUtil;
import com.xiaoshu.common.util.ResponseEntity;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.WebUtils;

import javax.servlet.ServletRequest;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * 我的农田管理数据Controller层
 */
@Controller
@RequestMapping("admin/farm/manager")
public class FarmManagerController {

    @Autowired
    FarmService farmService;

    @Autowired
    UserService userService;

    @Autowired
    FarmManagerService farmManagerService;

    @Autowired
    MessageService messageService;

    @GetMapping(value = "list")
    public String list(ModelMap modelMap) {
        String userId = MySysUser.id();//农田主id
        List<FarmManagerCount> farmManagerCountList = farmManagerService.getCountManager(userId);
        int tepmerManagerCount=0;
        int humManagerCount=0;
        int illManagerCount=0;
        for (int i = 0; i < farmManagerCountList.size(); i++) {
            //Str.contains
            if ((farmManagerCountList.get(i).getFarmManagerType()).contains("温度")) {
                tepmerManagerCount=tepmerManagerCount+1;
            }
            if ((farmManagerCountList.get(i).getFarmManagerType()).contains("湿度")) {
                humManagerCount=humManagerCount+1;
            }
            //str1.indexOf("RO")>=0
            if ((farmManagerCountList.get(i).getFarmManagerType()).indexOf("光照")>=0) {
                illManagerCount=illManagerCount+1;
            }
        }
        modelMap.put("tepmerManagerCount",tepmerManagerCount);
        modelMap.put("humManagerCount", humManagerCount);
        modelMap.put("illManagerCount",illManagerCount );
        return "admin/farmManager/list";
    }

//    @RequiresPermissions("farm:manager:list")
    @PostMapping("list")
    @SysLog("查看农田管理员列表")
    @ResponseBody
    public PageData<FarmManager> list(@RequestParam(value = "page", defaultValue = "1") Integer page,
                                      @RequestParam(value = "limit", defaultValue = "10") Integer limit,
                                      ServletRequest request) {
        Map map = WebUtils.getParametersStartingWith(request, "s_");
        PageData<FarmManager> farmManagerPageData = new PageData<>();
        QueryWrapper<FarmManager> farmManagerQueryWrapper = new QueryWrapper<>();
        String userId = MySysUser.id();

        farmManagerQueryWrapper.eq("farm_own_id", userId);//只有农田主才能查询农田数据
        if (!map.isEmpty()) {
            String keys = (String) map.get("key");
            if (StringUtils.isNotBlank(keys)) {
                farmManagerQueryWrapper.like("farm_manager_nick_name", keys);
            }
        }
        IPage<FarmManager> farmManagerPage = farmManagerService.page(new Page<>(page, limit), farmManagerQueryWrapper);
        farmManagerPageData.setCount(farmManagerPage.getTotal());
        farmManagerPageData.setData(farmManagerPage.getRecords());
        /*farmPageData.setData(setUserToFarm(farmPage.getRecords()));*/
        return farmManagerPageData;
    }

    /** id-----farmManagerType
     * temperManager:温度管理员
     * humManager:湿度管理员
     * illManager:光照管理员
     * @param modelMap
     * @return
     */
    @GetMapping("add")
    public String add(ModelMap modelMap) {

        List<User> allHaveManagerIdeneityUserList=userService.getAllHaveManagerIdentityUser();
        List<FarmManager> allFarmManager=farmManagerService.getAllFarmManager();

        for (int i=0;i<allHaveManagerIdeneityUserList.size();i++){
            for (int j=0;j<allFarmManager.size();j++){
                if (allFarmManager.get(j).getFarmManagerId().equals(allHaveManagerIdeneityUserList.get(i).getId())){
                    allHaveManagerIdeneityUserList.remove(i);
                }
            }
        }
        if(allHaveManagerIdeneityUserList.size()>0){
            modelMap.put("allHaveManagerIdeneityUserList", allHaveManagerIdeneityUserList);
        }else{
            modelMap.put("error","一个农田数据管理员只能管理一个农田主的农田,没有农田数据管理员可以添加,请返回");
        }
        modelMap.put("farmManagerTypeList", FarmManagerUtil.getFarmManagerTypeList());//获得初始化的农田数据管理员
        return "admin/farmManager/add";
    }
//    @RequiresPermissions("farm:manager:add")
    @PostMapping("getmanagers")
    @ResponseBody
    @SysLog("获取未分配的农田数据管理员")
    public ResponseEntity getManagers(ModelMap modelMap,@RequestParam(value = "id" ,required = false) String farmManagerTypeId) {
        farmManagerTypeId="adasd";
        return ResponseEntity.success("操作成功");
    }
//    @RequiresPermissions("farm:manager:add")
    @PostMapping("add")
    @ResponseBody
    @SysLog("保存新增农田管理员数据")
    public ResponseEntity add(String id) {
        String farmOwnId=MySysUser.id();
        User farManagerUser=userService.findUserById(id);
        User farmOwnUser=userService.findUserById(farmOwnId);
        FarmManager farmManager=new FarmManager();
        farmManager.setFarmOwnId(farmOwnId);//农田主id
        farmManager.setFarmManagerId(id);//农田管理员id
        farmManager.setFarmOwnNickName(farmOwnUser.getNickName());
        farmManager.setFarmManagerType(farManagerUser.getIdentity());
        farmManager.setUpdateDate(new Date());
        farmManager.setFarmManagerNickName(farManagerUser.getNickName());

        Message message=new Message();
        message.setToUser(id);
        message.setTitle("身份设置");
        message.setMessageType("农田主设置");
        message.setContent("您已被设置为"+farmOwnUser.getNickName()+"的农田数据管理员");
        messageService.saveMessage(message);
        farmManagerService.save(farmManager);

        return ResponseEntity.success("操作成功");
    }

    /*   @GetMapping("edit")
       public String edit(String id,ModelMap modelMap){
           FarmManager farmManager = farmManagerService.getFarmById(id);
           modelMap.put("farmManager",farmManager);
           return "admin/farmManager/edit";
       }

       @RequiresPermissions("farm:manager:edit")
       @PostMapping("edit")
       @ResponseBody
       @SysLog("保存编辑农田数据")
       public ResponseEntity edit(@RequestBody FarmManager farm, String id){
           if(StringUtils.isBlank(id)){
               return ResponseEntity.failure("农田ID不能为空");
           }else{
               farm.setId(id);
           }
           if(StringUtils.isBlank(farm.getName())){
               return ResponseEntity.failure("农田名称不能为空");
           }
           if(StringUtils.isBlank(farm.getSize())){
               return ResponseEntity.failure("农田面积不能为空");
           }
           if(StringUtils.isBlank(farm.getLocation())){
               return ResponseEntity.failure("农田位置不能为空");
           }
           if(StringUtils.isBlank(farm.getTemperature())){
               return ResponseEntity.failure("农田标准温度不能为空");
           }
           if(StringUtils.isBlank(farm.getHumidity())){
               return ResponseEntity.failure("农田相对湿度不能为空");
           }
           if(StringUtils.isBlank(farm.getIllumination())){
               return ResponseEntity.failure("农田光照强度不能为空");
           }
           FarmManager oldFarm = farmService.getFarmById(farm.getId());
           if(!oldFarm.getName().equals(farm.getName())){
               if(farmService.getFarmNameCount(farm.getName())>0){
                   return ResponseEntity.failure("农田名称已存在");
               }
           }
           farmService.updateFarm(farm);
           return ResponseEntity.success("操作成功");
       }*/
//
//    @RequiresPermissions("farm:manager:delete")
    @PostMapping("delete")
    @ResponseBody
    @SysLog("删除农田管理员数据")
    public ResponseEntity delete(@RequestParam(value = "id", required = false) String id) {
        if (StringUtils.isBlank(id)) {
            return ResponseEntity.failure("农田管理员ID不能为空");
        }
        FarmManager farmManager=farmManagerService.getFarmManagerById(id);
        User farmOwnUser=userService.findUserById(MySysUser.id());
        Message message=new Message();
        message.setToUser(farmManager.getFarmManagerId());
        message.setTitle("身份设置");
        message.setMessageType("农田主设置");
        message.setContent("您已被"+farmOwnUser.getNickName()+"农田主移除农田数据管理员身份");
        messageService.saveMessage(message);

        farmManagerService.deleteFarmManager(farmManager);
        return ResponseEntity.success("操作成功");
    }

}
