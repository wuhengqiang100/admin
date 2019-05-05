package com.xiaoshu.admin.controller;

import com.xiaoshu.admin.entity.Farm;
import com.xiaoshu.admin.entity.FarmData;
import com.xiaoshu.admin.entity.Message;
import com.xiaoshu.admin.entity.User;
import com.xiaoshu.admin.service.*;
import com.xiaoshu.common.annotation.SysLog;
import com.xiaoshu.common.config.MySysUser;
import com.xiaoshu.common.util.DateUtil;
import com.xiaoshu.common.util.ResponseEntity;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
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

    @Autowired
    FarmDataService farmDataService;

    @Autowired
    FarmManagerService farmManagerService;

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
    public String list(ModelMap modelMap, HttpSession session){
        String userId=MySysUser.id();
        List<Farm> farmList=new ArrayList<>();
        //判断是不是农田主
        String farmOwnId=farmManagerService.findFarmOwnIdByCurrentId(userId);
        if (StringUtils.isBlank(farmOwnId)){//是数据管理员
            farmList=farmService.getFarmByUserId(userId);
        }else{//是农田主
            farmList=farmService.getFarmByUserId(farmOwnId);
        }
        String firstFarmId=farmList.get(0).getId();
        session.setAttribute("firstFarmId",firstFarmId);
        Farm firstFarm=farmList.get(0);
        modelMap.put("farmList",farmList);
        modelMap.put("firstFarm",firstFarm);
        return "admin/farmdata/list";
    }



//    @RequiresPermissions("farm:farmdata:list")
    @SysLog("根据条件查询农田的数据")
    @PostMapping("list")
    @ResponseBody
    public ResponseEntity list(@RequestParam(value = "id",required = false) String farmId,HttpSession session) {
        ResponseEntity responseEntity=new ResponseEntity();

        if (StringUtils.isBlank(farmId)){
            farmId= (String) session.getAttribute("firstFarmId");//没有id,就从session里面去第一个农田的id
        }

        List<FarmData> firstFarmDataList=farmDataService.getFarmDataByFarmId(farmId);//根据农田id获取各个区块的数据
        //取一周的数据
        String[] dateTimeArray=new String[7];
        String[] temperArray=new String[7];
        String[] humidiArray=new String[7];
        String[] illumiArray=new String[7];
        for (int i=0;i<firstFarmDataList.size();i++){
            dateTimeArray[i]= DateUtil.getStringDateShort(firstFarmDataList.get(i).getTime());
            temperArray[i]=firstFarmDataList.get(i).getTemperature();
            humidiArray[i]=firstFarmDataList.get(i).getHumidity();
            illumiArray[i]=firstFarmDataList.get(i).getIllumination();
        }
        responseEntity.setAny("dateTimeArray",dateTimeArray);
        responseEntity.setAny("temperArray",temperArray);
        responseEntity.setAny("humidiArray",humidiArray);
        responseEntity.setAny("illumiArray",illumiArray);

        responseEntity.setSuccess(true);
        return responseEntity;
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
    public String temper(ModelMap modelMap,HttpSession session){
        String userId=MySysUser.id();
        List<Farm> farmList=new ArrayList<>();
        //判断是不是农田主
        String farmOwnId=farmManagerService.findFarmOwnIdByCurrentId(userId);
        if (StringUtils.isBlank(farmOwnId)){//是数据管理员
            farmList=farmService.getFarmByUserId(userId);
        }else{//是农田主
            farmList=farmService.getFarmByUserId(farmOwnId);
        }
        String firstFarmId=farmList.get(0).getId();
        session.setAttribute("firstFarmId",firstFarmId);
        Farm firstFarm=farmList.get(0);
        modelMap.put("farmList",farmList);
        modelMap.put("firstFarm",firstFarm);
        return "admin/farmdata/temper";
    }

    @RequiresPermissions("farm:farmdata:temper")
    @SysLog("查看农田具体数据")
    @PostMapping("temper")
    public ResponseEntity temperAll(@RequestParam(value = "id",required = false) String farmId,HttpSession session) {
        ResponseEntity responseEntity=new ResponseEntity();
        if (StringUtils.isBlank(farmId)){
            farmId= (String) session.getAttribute("firstFarmId");//没有id,就从session里面去第一个农田的id
        }
        List<FarmData> firstFarmDataList=farmDataService.getFarmDataByFarmId(farmId);//根据农田id获取各个区块的数据
        //取一周的数据
        String[] dateTimeArray=new String[7];
        String[] temperArray=new String[7];
        for (int i=0;i<firstFarmDataList.size();i++){
            dateTimeArray[i]= DateUtil.getStringDateShort(firstFarmDataList.get(i).getTime());
            temperArray[i]=firstFarmDataList.get(i).getTemperature();
        }
        responseEntity.setAny("dateTimeArray",dateTimeArray);
        responseEntity.setAny("temperArray",temperArray);
        responseEntity.setSuccess(true);
        return responseEntity;
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
        List<Farm> farmList=new ArrayList<>();
        //判断是不是农田主
        String farmOwnId=farmManagerService.findFarmOwnIdByCurrentId(userId);
        if (StringUtils.isBlank(farmOwnId)){//是数据管理员
            farmList=farmService.getFarmByUserId(userId);
        }else{//是农田主
            farmList=farmService.getFarmByUserId(farmOwnId);
        }
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
        List<Farm> farmList=new ArrayList<>();
        //判断是不是农田主
        String farmOwnId=farmManagerService.findFarmOwnIdByCurrentId(userId);
        if (StringUtils.isBlank(farmOwnId)){//是数据管理员
            farmList=farmService.getFarmByUserId(userId);
        }else{//是农田主
            farmList=farmService.getFarmByUserId(farmOwnId);
        }
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
