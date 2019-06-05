package com.xiaoshu.admin.controller;

import com.xiaoshu.admin.entity.FarmData;
import com.xiaoshu.admin.entity.JsonData.FarmDataFromJson;
import com.xiaoshu.admin.service.FarmDataService;
import com.xiaoshu.admin.service.MessageService;
import com.xiaoshu.common.annotation.SysLog;
import com.xiaoshu.common.serialport.ListPort;
import com.xiaoshu.common.serialport.SerialPortTest1;
import com.xiaoshu.common.util.JsonParseUtil;
import com.xiaoshu.common.util.ResponseEntity;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;

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

    @SysLog("电脑串口监控")
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
    }

}
