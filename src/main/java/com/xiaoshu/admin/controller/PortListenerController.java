package com.xiaoshu.admin.controller;

import com.xiaoshu.admin.entity.Farm;
import com.xiaoshu.admin.entity.FarmData;
import com.xiaoshu.admin.entity.Message;
import com.xiaoshu.admin.service.FarmDataService;
import com.xiaoshu.admin.service.FarmService;
import com.xiaoshu.admin.service.MessageService;
import com.xiaoshu.admin.service.UserService;
import com.xiaoshu.common.annotation.SysLog;
import com.xiaoshu.common.config.MySysUser;
import com.xiaoshu.common.util.ResponseEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * 串口数据监听
 */
@Controller
@RequestMapping("/farm/port")
public class PortListenerController {

    @Autowired
    FarmDataService farmDataService;

    @Autowired
    MessageService messageService;


    @Autowired
    UserService userService;

    @Autowired
    FarmService farmService;

    @SysLog("电脑串口监控")
    @PostMapping("listener")
    @ResponseBody
    public ResponseEntity listener() {
        ResponseEntity responseEntity = new ResponseEntity();
        responseEntity.setAny("imageColor",false);
        responseEntity.setSuccess(false);
        List<Farm> farmList=farmService.getFarmByUserId(MySysUser.id());
        List<FarmData> farmDataListAll=new ArrayList<>();
        List<FarmData> farmDataList=new ArrayList<>();
        for (Farm farm:farmList){
            farmDataList=farmDataService.getNotAlertFarmData(farm.getId());
            if (null!=farmDataList){
                farmDataListAll.addAll(farmDataList);//最终的该用户下的农田未报警数据
            }
        }
//        List<FarmData> farmDataList = farmDataService.getNotAlertFarmData();
        Message message=new Message();
        int countFlag=0;
        message.setMessageType("系统报警");
        message.setTitle("传感器故障");
        if (null==farmDataListAll){
            return ResponseEntity.failure("当前没有数据传输!");
        }else{
            for (FarmData farmData : farmDataListAll) {
                StringBuffer contentStr=new StringBuffer("农田"+farmData.getFarmId()+","+farmData.getArea()+"区域的");
                if ("0".equals(farmData.getSensor1_temperature_flag())){
                    contentStr.append("温度传感器故障!");
                    countFlag++;
                }
                if ("0".equals(farmData.getSensor1_humidity_flag())){
                    contentStr.append(",湿度传感器故障!");
                    countFlag++;
                }
                if ("0".equals(farmData.getSensor1_illumination_flag())){
                    contentStr.append(",光照传感器故障!");
                    countFlag++;
                }
                if (countFlag>0){
                    String errorFlag=new String(contentStr);
                    messageService.saveMessageSystem(errorFlag);
                    responseEntity.setAny("sensorError",true);
                    responseEntity.setMessage(errorFlag);
                    responseEntity.setSuccess(true);
                    return responseEntity;
                }

            }
            for (FarmData fr:farmDataListAll){
                if (0==fr.getAlertFlag()){
                    fr.setAlertFlag(1);
                    farmDataService.updateOnlyAlertFlag(fr);//只更新报警标志
                    responseEntity.setSuccess(true);
                    responseEntity.setAny("imageColor",true);
                    responseEntity.setMessage("传感器正在传输数据!");
                    return responseEntity;
                }else{
                    responseEntity.setSuccess(true);
                    responseEntity.setAny("imageColor",true);
                    responseEntity.setMessage("传感器已拔出!");
                    return responseEntity;
                }

            }
        }
        return responseEntity;
    }

   /* @SysLog("电脑串口监控")
    @PostMapping("listener")
    @ResponseBody
    public ResponseEntity listener() {
        ResponseEntity responseEntity = new ResponseEntity();
        responseEntity.setAny("imageColor",false);
        if (ListPort.listPorts()) {
            if (ListPort.listCommPorts()) {
                SerialPortTest1 serialPortTest1 = new SerialPortTest1();
                try {
                    responseEntity.setAny("imageColor",true);
                    responseEntity.setSuccess(true);
                    serialPortTest1.init();
                    String jsonData = serialPortTest1.readComm();
                    if (StringUtils.isBlank(jsonData)) {
                        responseEntity.setMessage("串口已连接,没有数据传输!");
                        return responseEntity;
                    } else {
                        FarmDataFromJson farmDataFromJson = JsonParseUtil.parseFarmData(jsonData);
                        FarmData farmData = JsonParseUtil.parseFarmDataFromJson(farmDataFromJson);
                        StringBuffer errotFlag=JsonParseUtil.parseFarmDataFlag(farmData);
                        String strFlag = new String(errotFlag);//stringBuffer转为String
                        if ("true".equals(strFlag)){//所有传感器都没有错
                            farmData.setTime(new Date());
                            farmDataService.save(farmData);
                            responseEntity.setMessage("串口已连接,数据正在传输!");
                            return responseEntity;
                        }else{//有错误的传感器识别信息
                            messageService.saveMessageSystem(strFlag);//发送报警给农田主
                            responseEntity.setMessage(strFlag);
                            responseEntity.setAny("sensorError",true);
                            return responseEntity;
                        }
                    }
                } finally {
                    serialPortTest1.closeSerialPort();
                }
            } else {
                return ResponseEntity.failure("没有可用串口!");
            }
        } else {
            return ResponseEntity.failure("没有可用串口!");
        }
    }*/

}
