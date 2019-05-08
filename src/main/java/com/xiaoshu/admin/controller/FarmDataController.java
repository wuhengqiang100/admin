package com.xiaoshu.admin.controller;

import com.xiaoshu.admin.entity.Farm;
import com.xiaoshu.admin.entity.FarmData;
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
     * 获取所有的农田光照数据
     * @param modelMap
     * @return
     */
    @RequiresPermissions("farm:farmdata:list")
    @SysLog("查看农田数据所有数据")
    @GetMapping(value = "light")
    public String light(ModelMap modelMap, HttpSession session){
        String userId=MySysUser.id();
        List<Farm> farmList=new ArrayList<>();
        //判断是不是农田主
        String farmOwnId=farmManagerService.findFarmOwnIdByCurrentId(userId);
        if (StringUtils.isBlank(farmOwnId)){//是数据管理员
            farmList=farmService.getFarmByUserId(userId);
        }else{//是农田主
            farmList=farmService.getFarmByUserId(farmOwnId);
        }
      /*  if (0==farmList.size()){

        }*/
        int firstFarmId=farmList.get(0).getId();
        session.setAttribute("firstFarmId",firstFarmId);
        Farm firstFarm=farmList.get(0);
        modelMap.put("farmList",farmList);
        modelMap.put("firstFarm",firstFarm);
        return "admin/farmdata/light";
    }


    //    @RequiresPermissions("farm:farmdata:list")
    @SysLog("根据条件查询农田的数据")
    @PostMapping("light")
    @ResponseBody
    public ResponseEntity lightAll(@RequestParam(value = "id",required = false) String farmId, HttpSession session) {
        ResponseEntity responseEntity=new ResponseEntity();
        Integer farmIdInt=new Integer(00);
        if (StringUtils.isBlank(farmId)){
            farmIdInt= (int) session.getAttribute("firstFarmId");//没有id,就从session里面去第一个农田的id
        }else{
            farmIdInt=Integer.parseInt(farmId);
        }
        List<FarmData> firstFarmDataList=farmDataService.getFarmDataByFarmId(farmIdInt);//根据农田id获取各个区块的数据
        //取一周的数据
        if (firstFarmDataList.size()>0){
            String[] dateTimeArray=new String[firstFarmDataList.size()];
            String[] illumiArray=new String[firstFarmDataList.size()];
            for (int i=0;i<firstFarmDataList.size();i++){
                dateTimeArray[i]= DateUtil.getStringDateShort(firstFarmDataList.get(i).getTime());
                illumiArray[i]=firstFarmDataList.get(i).getIllumination();
            }
            Farm farmTop=farmService.getFarmById(farmIdInt);
            FarmData mostNewFarmData=farmDataService.getMostNewFarmData(farmIdInt);
            responseEntity.setAny("dateTimeArray",dateTimeArray);
            responseEntity.setAny("illumiArray",illumiArray);
            responseEntity.setAny("farmTop",farmTop);
            responseEntity.setAny("mostNewFarmData",mostNewFarmData);
            responseEntity.setSuccess(true);
        }else{
            responseEntity.setMessage("当前农田还没有数据,请采集数据");
            responseEntity.setSuccess(false);
        }

        return responseEntity;
    }

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
      /*  if (0==farmList.size()){

        }*/
        int firstFarmId=farmList.get(0).getId();
        session.setAttribute("firstFarmId",firstFarmId);
        Farm firstFarm=farmList.get(0);
        modelMap.put("farmList",farmList);
        modelMap.put("firstFarm",firstFarm);
        return "admin/farmdata/list";
    }


//    @RequiresPermissions("farm:farmdata:list")
    @SysLog("查看农田数据所有数据")
    @GetMapping(value = "detail")
    public String detail(String id){

        return "admin/farmdata/detail";
    }



//    @RequiresPermissions("farm:farmdata:list")
    @SysLog("根据条件查询农田的数据")
    @PostMapping("list")
    @ResponseBody
    public ResponseEntity list(@RequestParam(value = "id",required = false) String farmId, HttpSession session) {
        ResponseEntity responseEntity=new ResponseEntity();
        Integer farmIdInt=new Integer(00);
        if (StringUtils.isBlank(farmId)){
            farmIdInt= (int) session.getAttribute("firstFarmId");//没有id,就从session里面去第一个农田的id
        }else{
            farmIdInt=Integer.parseInt(farmId);
        }
        List<FarmData> firstFarmDataList=farmDataService.getFarmDataByFarmId(farmIdInt);//根据农田id获取各个区块的数据
        //取一周的数据
        if (firstFarmDataList.size()>0){
            String[] dateTimeArray=new String[firstFarmDataList.size()];
            String[] temperArray=new String[firstFarmDataList.size()];
            String[] humidiArray=new String[firstFarmDataList.size()];
            String[] illumiArray=new String[firstFarmDataList.size()];
            for (int i=0;i<firstFarmDataList.size();i++){
                dateTimeArray[i]= DateUtil.getStringDateShort(firstFarmDataList.get(i).getTime());
                temperArray[i]=firstFarmDataList.get(i).getTemperature();
                humidiArray[i]=firstFarmDataList.get(i).getHumidity();
                illumiArray[i]=firstFarmDataList.get(i).getIllumination();
            }
            Farm farmTop=farmService.getFarmById(farmIdInt);
            FarmData mostNewFarmData=farmDataService.getMostNewFarmData(farmIdInt);
            responseEntity.setAny("dateTimeArray",dateTimeArray);
            responseEntity.setAny("temperArray",temperArray);
            responseEntity.setAny("humidiArray",humidiArray);
            responseEntity.setAny("illumiArray",illumiArray);
            responseEntity.setAny("farmTop",farmTop);
            responseEntity.setAny("mostNewFarmData",mostNewFarmData);
            responseEntity.setSuccess(true);
        }else{
            responseEntity.setMessage("当前农田还没有数据,请采集数据");
            responseEntity.setSuccess(false);
        }

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
        int firstFarmId=farmList.get(0).getId();
        session.setAttribute("firstFarmId",firstFarmId);
        Farm firstFarm=farmList.get(0);
        modelMap.put("farmList",farmList);
        modelMap.put("firstFarm",firstFarm);
        return "admin/farmdata/temper";
    }

    @RequiresPermissions("farm:farmdata:temper")
    @SysLog("查看农田温度数据")
    @PostMapping("temper")
    @ResponseBody
    public ResponseEntity temperAll(@RequestParam(value = "id",required = false) String farmId,HttpSession session) {
        ResponseEntity responseEntity=new ResponseEntity();
        Integer farmIdInt=new Integer(00);
        if (StringUtils.isBlank(farmId)){
            farmIdInt= (int) session.getAttribute("firstFarmId");//没有id,就从session里面去第一个农田的id
        }else{
            farmIdInt=Integer.parseInt(farmId);
        }
        List<FarmData> firstFarmDataList=farmDataService.getFarmDataByFarmId(farmIdInt);//根据农田id获取各个区块的数据
        //取一周的数据
        if (firstFarmDataList.size()>0){
            String[] dateTimeArray=new String[firstFarmDataList.size()];
            String[] temperArray=new String[firstFarmDataList.size()];
//            String[] humidiArray=new String[firstFarmDataList.size()];
//            String[] illumiArray=new String[firstFarmDataList.size()];
            for (int i=0;i<firstFarmDataList.size();i++){
                dateTimeArray[i]= DateUtil.getStringDateShort(firstFarmDataList.get(i).getTime());
                temperArray[i]=firstFarmDataList.get(i).getTemperature();
//                humidiArray[i]=firstFarmDataList.get(i).getHumidity();
//                illumiArray[i]=firstFarmDataList.get(i).getIllumination();
            }
            Farm farmTop=farmService.getFarmById(farmIdInt);
            FarmData mostNewFarmData=farmDataService.getMostNewFarmData(farmIdInt);
            responseEntity.setAny("dateTimeArray",dateTimeArray);
            responseEntity.setAny("temperArray",temperArray);
//            responseEntity.setAny("humidiArray",humidiArray);
//            responseEntity.setAny("illumiArray",illumiArray);
            responseEntity.setAny("farmTop",farmTop);
            responseEntity.setAny("mostNewFarmData",mostNewFarmData);
            responseEntity.setSuccess(true);
        }else{
            responseEntity.setMessage("当前农田还没有数据,请采集数据");
            responseEntity.setSuccess(false);
        }

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
    public String hum(ModelMap modelMap,HttpSession session){
        String userId=MySysUser.id();
        List<Farm> farmList=new ArrayList<>();
        //判断是不是农田主
        String farmOwnId=farmManagerService.findFarmOwnIdByCurrentId(userId);
        if (StringUtils.isBlank(farmOwnId)){//是数据管理员
            farmList=farmService.getFarmByUserId(userId);
        }else{//是农田主
            farmList=farmService.getFarmByUserId(farmOwnId);
        }
        int firstFarmId=farmList.get(0).getId();
        session.setAttribute("firstFarmId",firstFarmId);
        Farm firstFarm=farmList.get(0);
        modelMap.put("farmList",farmList);
        modelMap.put("firstFarm",firstFarm);
        return "admin/farmdata/hum";
    }

    @RequiresPermissions("farm:farmdata:hum")
    @SysLog("查看农田具体湿度数据")
    @PostMapping("hum")
    @ResponseBody
    public ResponseEntity humAll(@RequestParam(value = "id",required = false) String farmId,HttpSession session) {
        ResponseEntity responseEntity=new ResponseEntity();
        Integer farmIdInt=new Integer(00);
        if (StringUtils.isBlank(farmId)){
            farmIdInt= (int) session.getAttribute("firstFarmId");//没有id,就从session里面去第一个农田的id
        }else{
            farmIdInt=Integer.parseInt(farmId);
        }
        List<FarmData> firstFarmDataList=farmDataService.getFarmDataByFarmId(farmIdInt);//根据农田id获取各个区块的数据
        //取一周的数据
        if (firstFarmDataList.size()>0){
            String[] dateTimeArray=new String[firstFarmDataList.size()];
//            String[] temperArray=new String[firstFarmDataList.size()];
            String[] humidiArray=new String[firstFarmDataList.size()];
//            String[] illumiArray=new String[firstFarmDataList.size()];
            for (int i=0;i<firstFarmDataList.size();i++){
                dateTimeArray[i]= DateUtil.getStringDateShort(firstFarmDataList.get(i).getTime());
//                temperArray[i]=firstFarmDataList.get(i).getTemperature();
                humidiArray[i]=firstFarmDataList.get(i).getHumidity();
//                illumiArray[i]=firstFarmDataList.get(i).getIllumination();
            }
            Farm farmTop=farmService.getFarmById(farmIdInt);
            FarmData mostNewFarmData=farmDataService.getMostNewFarmData(farmIdInt);
            responseEntity.setAny("dateTimeArray",dateTimeArray);
//            responseEntity.setAny("temperArray",temperArray);
            responseEntity.setAny("humidiArray",humidiArray);
//            responseEntity.setAny("illumiArray",illumiArray);
            responseEntity.setAny("farmTop",farmTop);
            responseEntity.setAny("mostNewFarmData",mostNewFarmData);
            responseEntity.setSuccess(true);
        }else{
            responseEntity.setMessage("当前农田还没有数据,请采集数据");
            responseEntity.setSuccess(false);
        }

        return responseEntity;
    }



}
