package com.xiaoshu.admin.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xiaoshu.admin.entity.FarmManager;
import com.xiaoshu.admin.service.FarmManagerService;
import com.xiaoshu.admin.service.FarmService;
import com.xiaoshu.admin.service.UserService;
import com.xiaoshu.common.annotation.SysLog;
import com.xiaoshu.common.base.PageData;
import com.xiaoshu.common.config.MySysUser;
import com.xiaoshu.common.util.ResponseEntity;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.WebUtils;

import javax.servlet.ServletRequest;
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

    @GetMapping(value = "list")
    public String list(){
        return "admin/farmManager/list";
    }

    @RequiresPermissions("farm:manager:list")
    @PostMapping("list")
    @SysLog("查看农田管理员列表")
    @ResponseBody
    public PageData<FarmManager> list(@RequestParam(value = "page",defaultValue = "1")Integer page,
                               @RequestParam(value = "limit",defaultValue = "10")Integer limit,
                               ServletRequest request){
        Map map = WebUtils.getParametersStartingWith(request, "s_");
        PageData<FarmManager> farmManagerPageData = new PageData<>();
        QueryWrapper<FarmManager> farmManagerQueryWrapper = new QueryWrapper<>();
        String userId= MySysUser.id();

        farmManagerQueryWrapper.eq("farm_own_id",userId);//只有农田主才能查询农田数据
        if(!map.isEmpty()){
            String keys = (String) map.get("key");
            if(StringUtils.isNotBlank(keys)) {
                farmManagerQueryWrapper.like("farm_manager_nick_name", keys);
            }
        }
        IPage<FarmManager> farmManagerPage = farmManagerService.page(new Page<>(page,limit),farmManagerQueryWrapper);
        farmManagerPageData.setCount(farmManagerPage.getTotal());
        farmManagerPageData.setData(farmManagerPage.getRecords());
        /*farmPageData.setData(setUserToFarm(farmPage.getRecords()));*/
        return farmManagerPageData;
    }

    @GetMapping("add")
    public String add( ModelMap modelMap){
        return "admin/farmManager/add";
    }

    @RequiresPermissions("farm:manager:add")
    @PostMapping("add")
    @ResponseBody
    @SysLog("保存新增农田数据")
    public ResponseEntity add(@RequestBody FarmManager farmManager){
       /* farmManager.setCreateId(MySysUser.id());
        farmManager.setUserId(MySysUser.id());
        farmManager.setCreateDate(new Date());
        if(StringUtils.isBlank(farm.getName())){
            return ResponseEntity.failure("农田名称不能为空");
        }
        if(StringUtils.isBlank(farm.getSize())){
            return ResponseEntity.failure("农田面积不能为空");
        }
        if(StringUtils.isBlank(farm.getLocation())){
            return ResponseEntity.failure("农田地点不能为空");
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

        if(farmService.getFarmNameCount(farm.getName())>0){
            return ResponseEntity.failure("农田名称已存在");
        }
        farmService.saveFarm(farm);*/
        return ResponseEntity.success("操作成功");
    }

//    @GetMapping("edit")
//    public String edit(String id,ModelMap modelMap){
//        FarmManager farm = farmService.getFarmById(id);
//        modelMap.put("farm",farm);
//        return "admin/farmManager/edit";
//    }
//
//    @RequiresPermissions("farm:manager:edit")
//    @PostMapping("edit")
//    @ResponseBody
//    @SysLog("保存编辑农田数据")
//    public ResponseEntity edit(@RequestBody FarmManager farm, String id){
//        if(StringUtils.isBlank(id)){
//            return ResponseEntity.failure("农田ID不能为空");
//        }else{
//            farm.setId(id);
//        }
//        if(StringUtils.isBlank(farm.getName())){
//            return ResponseEntity.failure("农田名称不能为空");
//        }
//        if(StringUtils.isBlank(farm.getSize())){
//            return ResponseEntity.failure("农田面积不能为空");
//        }
//        if(StringUtils.isBlank(farm.getLocation())){
//            return ResponseEntity.failure("农田位置不能为空");
//        }
//        if(StringUtils.isBlank(farm.getTemperature())){
//            return ResponseEntity.failure("农田标准温度不能为空");
//        }
//        if(StringUtils.isBlank(farm.getHumidity())){
//            return ResponseEntity.failure("农田相对湿度不能为空");
//        }
//        if(StringUtils.isBlank(farm.getIllumination())){
//            return ResponseEntity.failure("农田光照强度不能为空");
//        }
//        FarmManager oldFarm = farmService.getFarmById(farm.getId());
//        if(!oldFarm.getName().equals(farm.getName())){
//            if(farmService.getFarmNameCount(farm.getName())>0){
//                return ResponseEntity.failure("农田名称已存在");
//            }
//        }
//        farmService.updateFarm(farm);
//        return ResponseEntity.success("操作成功");
//    }
//
//    @RequiresPermissions("farm:manager:delete")
//    @PostMapping("delete")
//    @ResponseBody
//    @SysLog("删除农田数据")
//    public ResponseEntity delete(@RequestParam(value = "id",required = false)String id){
//        if(StringUtils.isBlank(id)){
//            return ResponseEntity.failure("农田ID不能为空");
//        }
//        FarmManager farm = farmService.getFarmById(id);
//        farmService.deleteFarm(farm);
//        return ResponseEntity.success("操作成功");
//    }
//
//    @RequiresPermissions("farm:manager:delete")
//    @PostMapping("deleteSome")
//    @ResponseBody
//    @SysLog("多选删除农田数据")
//    public ResponseEntity deleteSome(@RequestBody List<FarmManager> farms){
//        if(farms == null || farms.size()==0){
//            return ResponseEntity.failure("请选择需要删除的农田");
//        }
//        for (FarmManager r : farms){
//            farmService.deleteFarm(r);
//        }
//        return ResponseEntity.success("操作成功");
//    }
}
