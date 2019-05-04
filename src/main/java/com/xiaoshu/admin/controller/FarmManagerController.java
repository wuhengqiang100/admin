package com.xiaoshu.admin.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xiaoshu.admin.entity.Farm;
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

    @GetMapping(value = "list")
    public String list(){
        return "admin/farmManager/list";
    }

    @RequiresPermissions("farm:manager:list")
    @PostMapping("list")
    @SysLog("查看农田列表")
    @ResponseBody
    public PageData<Farm> list(@RequestParam(value = "page",defaultValue = "1")Integer page,
                               @RequestParam(value = "limit",defaultValue = "10")Integer limit,
                               ServletRequest request){
        Map map = WebUtils.getParametersStartingWith(request, "s_");
        PageData<Farm> farmPageData = new PageData<>();
        QueryWrapper<Farm> farmWrapper = new QueryWrapper<>();
        //加条件
        farmWrapper.eq("del_flag",false);
        String userId= MySysUser.id();
        String farmOwnId=userService.findFarmOwnManagerIdById(userId);
        if (StringUtils.isNotBlank(farmOwnId)){
            farmWrapper.eq("userId",farmOwnId);
        }else{
            farmWrapper.eq("userId",MySysUser.id());
        }
//        farmWrapper.eq("userId",MySysUser.id());
        if(!map.isEmpty()){
            String keys = (String) map.get("key");
            if(StringUtils.isNotBlank(keys)) {
                farmWrapper.like("name", keys);
            }
        }
        IPage<Farm> farmPage = farmService.page(new Page<>(page,limit),farmWrapper);
        farmPageData.setCount(farmPage.getTotal());
        farmPageData.setData(farmPage.getRecords());
        /*farmPageData.setData(setUserToFarm(farmPage.getRecords()));*/
        return farmPageData;
    }

    @GetMapping("add")
    public String add(){
        return "admin/farmManager/add";
    }

    @RequiresPermissions("farm:manager:add")
    @PostMapping("add")
    @ResponseBody
    @SysLog("保存新增农田数据")
    public ResponseEntity add(@RequestBody Farm farm){
        farm.setCreateId(MySysUser.id());
        farm.setUserId(MySysUser.id());
        farm.setCreateDate(new Date());
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
        farmService.saveFarm(farm);
        return ResponseEntity.success("操作成功");
    }

    @GetMapping("edit")
    public String edit(String id,ModelMap modelMap){
        Farm farm = farmService.getFarmById(id);
        modelMap.put("farm",farm);
        return "admin/farmManager/edit";
    }

    @RequiresPermissions("farm:manager:edit")
    @PostMapping("edit")
    @ResponseBody
    @SysLog("保存编辑农田数据")
    public ResponseEntity edit(@RequestBody Farm farm, String id){
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
        Farm oldFarm = farmService.getFarmById(farm.getId());
        if(!oldFarm.getName().equals(farm.getName())){
            if(farmService.getFarmNameCount(farm.getName())>0){
                return ResponseEntity.failure("农田名称已存在");
            }
        }
        farmService.updateFarm(farm);
        return ResponseEntity.success("操作成功");
    }

    @RequiresPermissions("farm:manager:delete")
    @PostMapping("delete")
    @ResponseBody
    @SysLog("删除农田数据")
    public ResponseEntity delete(@RequestParam(value = "id",required = false)String id){
        if(StringUtils.isBlank(id)){
            return ResponseEntity.failure("农田ID不能为空");
        }
        Farm farm = farmService.getFarmById(id);
        farmService.deleteFarm(farm);
        return ResponseEntity.success("操作成功");
    }

    @RequiresPermissions("farm:manager:delete")
    @PostMapping("deleteSome")
    @ResponseBody
    @SysLog("多选删除农田数据")
    public ResponseEntity deleteSome(@RequestBody List<Farm> farms){
        if(farms == null || farms.size()==0){
            return ResponseEntity.failure("请选择需要删除的农田");
        }
        for (Farm r : farms){
            farmService.deleteFarm(r);
        }
        return ResponseEntity.success("操作成功");
    }
}
