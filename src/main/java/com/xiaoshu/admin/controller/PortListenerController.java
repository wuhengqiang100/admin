package com.xiaoshu.admin.controller;

import com.xiaoshu.admin.entity.Farm;
import com.xiaoshu.admin.entity.FarmData;
import com.xiaoshu.admin.entity.JsonData.FarmDataFromJson;
import com.xiaoshu.admin.entity.Message;
import com.xiaoshu.admin.service.FarmDataService;
import com.xiaoshu.admin.service.FarmService;
import com.xiaoshu.admin.service.MessageService;
import com.xiaoshu.admin.service.UserService;
import com.xiaoshu.common.annotation.SysLog;
import com.xiaoshu.common.config.MySysUser;
import com.xiaoshu.common.serialport.ListPort;
import com.xiaoshu.common.util.JsonParseUtil;
import com.xiaoshu.common.util.ResponseEntity;
import gnu.io.*;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.*;

/**
 * 串口数据监听
 */
@Controller
@RequestMapping("/farm/port")
public class PortListenerController implements Runnable, SerialPortEventListener {

    @Autowired
    FarmDataService farmDataService;

    @Autowired
    MessageService messageService;


    @Autowired
    UserService userService;

    @Autowired
    FarmService farmService;
    // 检测系统中可用的通讯端口类
    private CommPortIdentifier portId;
    // 枚举类型
    private Enumeration<CommPortIdentifier> portList;

    // RS232串口
    private SerialPort serialPort;

    // 输入输出流
    private InputStream inputStream;
    private OutputStream outputStream;

    // 保存串口返回信息
    private String test = "";
    @SysLog("串口数据传输")
    @PostMapping("first")
    @ResponseBody
    public ResponseEntity first() {
        ResponseEntity responseEntity = new ResponseEntity();
        if (ListPort.listPorts()){
            if (ListPort.listCommPorts()){
//                SerialPortTest1 serialPortTest1=new SerialPortTest1();
                init();
                readComm();
//                serialPortTest1.run();
//                Thread thread=new Thread(new SerialPortTest1());
//                thread.start();
            }else{
                return ResponseEntity.success("没有可用端口！");
//                System.out.println("没有可用端口!");
            }
        }else{
            return ResponseEntity.success("没有可用端口！");
//            System.out.println("没有可用端口!");
        }
        return responseEntity;
    }

    // 读取串口返回信息
    public String readComm() {
        byte[] readBuffer = new byte[1024];
        try {
            inputStream = serialPort.getInputStream();
            // 从线路上读取数据流
            int len = 0;

            try {
                while ((len = inputStream.read(readBuffer)) != -1) {
                    test += new String(readBuffer, 0, len).trim();
                    break;
                }
            } catch (IOException e) {

            } finally {
                System.out.println("接收的内容：" + test + new Date());
                test="{\n" +
                        "  \"Net\": {\n" +
                        "    \"NetID\": \"1\",\n" +
                        "    \"IDnode\": \"2\",\n" +
                        "    \"Netaddr\": \"20\"\n" +
                        "  },\n" +
                        "  \"LightSensor\": {\n" +
                        "    \"status\": {\n" +
                        "      \"WorkModel\": \"1\",\n" +
                        "      \"Value\": \"6.38 lx\"\n" +
                        "    }\n" +
                        "  },\n" +
                        "  \"Soiltempature\": {\n" +
                        "    \"status\": {\n" +
                        "      \"WorkModel\": \"1\",\n" +
                        "      \"Value\": \"25.54 ��\"\n" +
                        "    }\n" +
                        "  },\n" +
                        "  \"Soilmoisture\": {\n" +
                        "    \"status\": {\n" +
                        "      \"WorkModel\": \"1\",\n" +
                        "      \"Value\": \"0.04 %\"\n" +
                        "    }\n" +
                        "  }\n" +
                        "}";
                if (StringUtils.isNotBlank(test)){//有数据传输
                    try{
                        String json="{\n" +
                                "  \"Net\": {\n" +
                                "    \"NetID\": \"1\",\n" +
                                "    \"IDnode\": \"2\",\n" +
                                "    \"Netaddr\": \"20\"\n" +
                                "  },\n" +
                                "  \"LightSensor\": {\n" +
                                "    \"status\": {\n" +
                                "      \"WorkModel\": \"1\",\n" +
                                "      \"Value\": \"6.38 lx\"\n" +
                                "    }\n" +
                                "  },\n" +
                                "  \"Soiltempature\": {\n" +
                                "    \"status\": {\n" +
                                "      \"WorkModel\": \"1\",\n" +
                                "      \"Value\": \"25.54 ��\"\n" +
                                "    }\n" +
                                "  },\n" +
                                "  \"Soilmoisture\": {\n" +
                                "    \"status\": {\n" +
                                "      \"WorkModel\": \"1\",\n" +
                                "      \"Value\": \"0.04 %\"\n" +
                                "    }\n" +
                                "  }\n" +
                                "}";
                        parseJsonDataAndSave(json);
//                        parseJsonDataAndSave(test);
                    }catch (Exception e){
                        System.out.println("不是标准字符串");
                    }finally{
//                        serialPort.close();
                    }

                }else{
                    System.out.println("串口已连接,没有数据传输");
                }
            }
//            System.out.println(test + " ");
            closeSerialPort();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return test;
    }

    public void closeSerialPort() {
//        uniqueInstance.serialPort.close();
        serialPort.close();
    }

    /**
     * 如果有数据读取到
     * @param jsonData
     */
    public void parseJsonDataAndSave(String jsonData) throws Exception{
      /*  String json="{\n" +
                "  \"Net\": {\n" +
                "    \"NetID\": \"1\",\n" +
                "    \"IDnode\": \"2\",\n" +
                "    \"Netaddr\": \"20\"\n" +
                "  },\n" +
                "  \"LightSensor\": {\n" +
                "    \"status\": {\n" +
                "      \"WorkModel\": \"1\",\n" +
                "      \"Value\": \"6.38 lx\"\n" +
                "    }\n" +
                "  },\n" +
                "  \"Soiltempature\": {\n" +
                "    \"status\": {\n" +
                "      \"WorkModel\": \"1\",\n" +
                "      \"Value\": \"25.54 ��\"\n" +
                "    }\n" +
                "  },\n" +
                "  \"Soilmoisture\": {\n" +
                "    \"status\": {\n" +
                "      \"WorkModel\": \"1\",\n" +
                "      \"Value\": \"0.04 %\"\n" +
                "    }\n" +
                "  }\n" +
                "}";*/
       /* Object obj = Class.forName("com.xiaoshu.admin.service.impl.FarmDataServiceImpl").newInstance();
        Class c=Class.forName("com.xiaoshu.admin.service.impl.FarmDataServiceImpl");
        Object test = c.newInstance();
        Method method = c.getMethod("saveParseJsonData", null);
        method.invoke(test, null);*/
//        FarmDataService farmDataService=new FarmDataServiceImpl();
        FarmDataFromJson farmDataFromJson = JsonParseUtil.parseFarmData(jsonData);
//        FarmDataFromJson farmDataFromJson = JsonParseUtil.parseFarmData(json);
        FarmData farmData = JsonParseUtil.parseFarmDataFromJson(farmDataFromJson);

        try {
            farmDataService.saveParseJsonData(farmData);
        } catch (Exception e) {
            System.out.println("数据保存错误!");
            e.printStackTrace();
        }
//        serialPort.close();
        System.out.println("数据格式正确,保存成功!");
    }

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

    // 实现接口SerialPortEventListener中的方法 读取从串口中接收的数据
    @Override
    public void serialEvent(SerialPortEvent event) {
        switch (event.getEventType()) {
            case SerialPortEvent.BI: // 通讯中断
            case SerialPortEvent.OE: // 溢位错误
            case SerialPortEvent.FE: // 帧错误
            case SerialPortEvent.PE: // 奇偶校验错误
            case SerialPortEvent.CD: // 载波检测
            case SerialPortEvent.CTS: // 清除发送
            case SerialPortEvent.DSR: // 数据设备准备好
            case SerialPortEvent.RI: // 响铃侦测
            case SerialPortEvent.OUTPUT_BUFFER_EMPTY: // 输出缓冲区已清空
                break;
            case SerialPortEvent.DATA_AVAILABLE: // 有数据到达
                readComm();
                break;
            default:
                break;
        }
    }

    @Override
    public void run() {
        init();
//        sendMsg();
        String jsonData=new String();
        jsonData=readComm();
    }
    // 初始化串口
    @SuppressWarnings("unchecked")
    public void init() {
        // 获取系统中所有的通讯端口
        portList = CommPortIdentifier.getPortIdentifiers();
        // 循环通讯端口
        while (portList.hasMoreElements()) {
            portId = portList.nextElement();
            // 判断是否是串口
            if (portId.getPortType() == CommPortIdentifier.PORT_SERIAL) {
                if ("COM20".equals(portId.getName())) {
//                    System.out.println("找到串口COM5");
                    // 打开串口
                    try {
                        // open:（应用程序名【随意命名】，阻塞时等待的毫秒数）
                        serialPort = (SerialPort) portId.open("0020", 2000);
//                        serialPort = (SerialPort) portId.open(Object.class.getSimpleName(), 2000);
                        serialPort = (SerialPort) portId.open(FileDescriptor.in);
//                        System.out.println("获取到串口对象,COM5");
                        //实例化输入流
                        inputStream = serialPort.getInputStream();
                        // 设置串口监听
                        serialPort.addEventListener(this);
                        // 设置串口数据时间有效(可监听)
                        serialPort.notifyOnDataAvailable(true);
                        // 设置串口通讯参数
                        // 波特率，数据位，停止位和校验方式
                        // 波特率2400,偶校验
                        serialPort.setSerialPortParams(115200, SerialPort.DATABITS_8, //
                                SerialPort.STOPBITS_1, SerialPort.PARITY_NONE);

                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                }
                if ("COM19".equals(portId.getName())) {
//                    System.out.println("找到串口COM5");
                    // 打开串口
                    try {
                        // open:（应用程序名【随意命名】，阻塞时等待的毫秒数）
                        serialPort = (SerialPort) portId.open("0019", 2000);
//                        serialPort = (SerialPort) portId.open(Object.class.getSimpleName(), 2000);
                        serialPort = (SerialPort) portId.open(FileDescriptor.in);
//                        System.out.println("获取到串口对象,COM5");
                        //实例化输入流
                        inputStream = serialPort.getInputStream();
                        // 设置串口监听
                        serialPort.addEventListener(this);
                        // 设置串口数据时间有效(可监听)
                        serialPort.notifyOnDataAvailable(true);
                        // 设置串口通讯参数
                        // 波特率，数据位，停止位和校验方式
                        // 波特率2400,偶校验
                        serialPort.setSerialPortParams(115200, SerialPort.DATABITS_8, //
                                SerialPort.STOPBITS_1, SerialPort.PARITY_NONE);

                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                }
                if ("COM18".equals(portId.getName())) {
//                    System.out.println("找到串口COM5");
                    // 打开串口
                    try {
                        // open:（应用程序名【随意命名】，阻塞时等待的毫秒数）
                        serialPort = (SerialPort) portId.open("0018", 2000);
//                        serialPort = (SerialPort) portId.open(Object.class.getSimpleName(), 2000);
                        serialPort = (SerialPort) portId.open(FileDescriptor.in);
//                        System.out.println("获取到串口对象,COM5");
                        //实例化输入流
                        inputStream = serialPort.getInputStream();
                        // 设置串口监听
                        serialPort.addEventListener(this);
                        // 设置串口数据时间有效(可监听)
                        serialPort.notifyOnDataAvailable(true);
                        // 设置串口通讯参数
                        // 波特率，数据位，停止位和校验方式
                        // 波特率2400,偶校验
                        serialPort.setSerialPortParams(115200, SerialPort.DATABITS_8, //
                                SerialPort.STOPBITS_1, SerialPort.PARITY_NONE);

                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                }
                if ("COM17".equals(portId.getName())) {
//                    System.out.println("找到串口COM5");
                    // 打开串口
                    try {
                        // open:（应用程序名【随意命名】，阻塞时等待的毫秒数）
                        serialPort = (SerialPort) portId.open("0017", 2000);
//                        serialPort = (SerialPort) portId.open(Object.class.getSimpleName(), 2000);
                        serialPort = (SerialPort) portId.open(FileDescriptor.in);
//                        System.out.println("获取到串口对象,COM5");
                        //实例化输入流
                        inputStream = serialPort.getInputStream();
                        // 设置串口监听
                        serialPort.addEventListener(this);
                        // 设置串口数据时间有效(可监听)
                        serialPort.notifyOnDataAvailable(true);
                        // 设置串口通讯参数
                        // 波特率，数据位，停止位和校验方式
                        // 波特率2400,偶校验
                        serialPort.setSerialPortParams(115200, SerialPort.DATABITS_8, //
                                SerialPort.STOPBITS_1, SerialPort.PARITY_NONE);

                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                }
                if ("COM16".equals(portId.getName())) {
//                    System.out.println("找到串口COM5");
                    // 打开串口
                    try {
                        // open:（应用程序名【随意命名】，阻塞时等待的毫秒数）
                        serialPort = (SerialPort) portId.open("0016", 2000);
//                        serialPort = (SerialPort) portId.open(Object.class.getSimpleName(), 2000);
                        serialPort = (SerialPort) portId.open(FileDescriptor.in);
//                        System.out.println("获取到串口对象,COM5");
                        //实例化输入流
                        inputStream = serialPort.getInputStream();
                        // 设置串口监听
                        serialPort.addEventListener(this);
                        // 设置串口数据时间有效(可监听)
                        serialPort.notifyOnDataAvailable(true);
                        // 设置串口通讯参数
                        // 波特率，数据位，停止位和校验方式
                        // 波特率2400,偶校验
                        serialPort.setSerialPortParams(115200, SerialPort.DATABITS_8, //
                                SerialPort.STOPBITS_1, SerialPort.PARITY_NONE);

                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                }
                if ("COM15".equals(portId.getName())) {
//                    System.out.println("找到串口COM5");
                    // 打开串口
                    try {
                        // open:（应用程序名【随意命名】，阻塞时等待的毫秒数）
                        serialPort = (SerialPort) portId.open("0015", 2000);
//                        serialPort = (SerialPort) portId.open(Object.class.getSimpleName(), 2000);
                        serialPort = (SerialPort) portId.open(FileDescriptor.in);
//                        System.out.println("获取到串口对象,COM5");
                        //实例化输入流
                        inputStream = serialPort.getInputStream();
                        // 设置串口监听
                        serialPort.addEventListener(this);
                        // 设置串口数据时间有效(可监听)
                        serialPort.notifyOnDataAvailable(true);
                        // 设置串口通讯参数
                        // 波特率，数据位，停止位和校验方式
                        // 波特率2400,偶校验
                        serialPort.setSerialPortParams(115200, SerialPort.DATABITS_8, //
                                SerialPort.STOPBITS_1, SerialPort.PARITY_NONE);

                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                }
                if ("COM14".equals(portId.getName())) {
//                    System.out.println("找到串口COM5");
                    // 打开串口
                    try {
                        // open:（应用程序名【随意命名】，阻塞时等待的毫秒数）
                        serialPort = (SerialPort) portId.open("0014", 2000);
//                        serialPort = (SerialPort) portId.open(Object.class.getSimpleName(), 2000);
                        serialPort = (SerialPort) portId.open(FileDescriptor.in);
//                        System.out.println("获取到串口对象,COM5");
                        //实例化输入流
                        inputStream = serialPort.getInputStream();
                        // 设置串口监听
                        serialPort.addEventListener(this);
                        // 设置串口数据时间有效(可监听)
                        serialPort.notifyOnDataAvailable(true);
                        // 设置串口通讯参数
                        // 波特率，数据位，停止位和校验方式
                        // 波特率2400,偶校验
                        serialPort.setSerialPortParams(115200, SerialPort.DATABITS_8, //
                                SerialPort.STOPBITS_1, SerialPort.PARITY_NONE);

                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                }
                if ("COM13".equals(portId.getName())) {
//                    System.out.println("找到串口COM5");
                    // 打开串口
                    try {
                        // open:（应用程序名【随意命名】，阻塞时等待的毫秒数）
                        serialPort = (SerialPort) portId.open("0013", 2000);
//                        serialPort = (SerialPort) portId.open(Object.class.getSimpleName(), 2000);
                        serialPort = (SerialPort) portId.open(FileDescriptor.in);
//                        System.out.println("获取到串口对象,COM5");
                        //实例化输入流
                        inputStream = serialPort.getInputStream();
                        // 设置串口监听
                        serialPort.addEventListener(this);
                        // 设置串口数据时间有效(可监听)
                        serialPort.notifyOnDataAvailable(true);
                        // 设置串口通讯参数
                        // 波特率，数据位，停止位和校验方式
                        // 波特率2400,偶校验
                        serialPort.setSerialPortParams(115200, SerialPort.DATABITS_8, //
                                SerialPort.STOPBITS_1, SerialPort.PARITY_NONE);

                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                }
                if ("COM12".equals(portId.getName())) {
//                    System.out.println("找到串口COM5");
                    // 打开串口
                    try {
                        // open:（应用程序名【随意命名】，阻塞时等待的毫秒数）
                        serialPort = (SerialPort) portId.open("0012", 2000);
//                        serialPort = (SerialPort) portId.open(Object.class.getSimpleName(), 2000);
                        serialPort = (SerialPort) portId.open(FileDescriptor.in);
//                        System.out.println("获取到串口对象,COM5");
                        //实例化输入流
                        inputStream = serialPort.getInputStream();
                        // 设置串口监听
                        serialPort.addEventListener(this);
                        // 设置串口数据时间有效(可监听)
                        serialPort.notifyOnDataAvailable(true);
                        // 设置串口通讯参数
                        // 波特率，数据位，停止位和校验方式
                        // 波特率2400,偶校验
                        serialPort.setSerialPortParams(115200, SerialPort.DATABITS_8, //
                                SerialPort.STOPBITS_1, SerialPort.PARITY_NONE);

                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                }
                if ("COM11".equals(portId.getName())) {
//                    System.out.println("找到串口COM5");
                    // 打开串口
                    try {
                        // open:（应用程序名【随意命名】，阻塞时等待的毫秒数）
                        serialPort = (SerialPort) portId.open("0011", 2000);
//                        serialPort = (SerialPort) portId.open(Object.class.getSimpleName(), 2000);
                        serialPort = (SerialPort) portId.open(FileDescriptor.in);
//                        System.out.println("获取到串口对象,COM5");
                        //实例化输入流
                        inputStream = serialPort.getInputStream();
                        // 设置串口监听
                        serialPort.addEventListener(this);
                        // 设置串口数据时间有效(可监听)
                        serialPort.notifyOnDataAvailable(true);
                        // 设置串口通讯参数
                        // 波特率，数据位，停止位和校验方式
                        // 波特率2400,偶校验
                        serialPort.setSerialPortParams(115200, SerialPort.DATABITS_8, //
                                SerialPort.STOPBITS_1, SerialPort.PARITY_NONE);

                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                }
                if ("COM10".equals(portId.getName())) {
//                    System.out.println("找到串口COM5");
                    // 打开串口
                    try {
                        // open:（应用程序名【随意命名】，阻塞时等待的毫秒数）
                        serialPort = (SerialPort) portId.open("0101", 2000);
//                        serialPort = (SerialPort) portId.open(Object.class.getSimpleName(), 2000);
                        serialPort = (SerialPort) portId.open(FileDescriptor.in);
//                        System.out.println("获取到串口对象,COM5");
                        //实例化输入流
                        inputStream = serialPort.getInputStream();
                        // 设置串口监听
                        serialPort.addEventListener(this);
                        // 设置串口数据时间有效(可监听)
                        serialPort.notifyOnDataAvailable(true);
                        // 设置串口通讯参数
                        // 波特率，数据位，停止位和校验方式
                        // 波特率2400,偶校验
                        serialPort.setSerialPortParams(115200, SerialPort.DATABITS_8, //
                                SerialPort.STOPBITS_1, SerialPort.PARITY_NONE);

                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                }
                if ("COM9".equals(portId.getName())) {
//                    System.out.println("找到串口COM5");
                    // 打开串口
                    try {
                        // open:（应用程序名【随意命名】，阻塞时等待的毫秒数）
                        serialPort = (SerialPort) portId.open("0999", 2000);
//                        serialPort = (SerialPort) portId.open(Object.class.getSimpleName(), 2000);
                        serialPort = (SerialPort) portId.open(FileDescriptor.in);
//                        System.out.println("获取到串口对象,COM5");
                        //实例化输入流
                        inputStream = serialPort.getInputStream();
                        // 设置串口监听
                        serialPort.addEventListener(this);
                        // 设置串口数据时间有效(可监听)
                        serialPort.notifyOnDataAvailable(true);
                        // 设置串口通讯参数
                        // 波特率，数据位，停止位和校验方式
                        // 波特率2400,偶校验
                        serialPort.setSerialPortParams(115200, SerialPort.DATABITS_8, //
                                SerialPort.STOPBITS_1, SerialPort.PARITY_NONE);

                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                }
                if ("COM8".equals(portId.getName())) {
//                    System.out.println("找到串口COM5");
                    // 打开串口
                    try {
                        // open:（应用程序名【随意命名】，阻塞时等待的毫秒数）
                        serialPort = (SerialPort) portId.open("0888", 2000);
//                        serialPort = (SerialPort) portId.open(Object.class.getSimpleName(), 2000);
                        serialPort = (SerialPort) portId.open(FileDescriptor.in);
//                        System.out.println("获取到串口对象,COM5");
                        //实例化输入流
                        inputStream = serialPort.getInputStream();
                        // 设置串口监听
                        serialPort.addEventListener(this);
                        // 设置串口数据时间有效(可监听)
                        serialPort.notifyOnDataAvailable(true);
                        // 设置串口通讯参数
                        // 波特率，数据位，停止位和校验方式
                        // 波特率2400,偶校验
                        serialPort.setSerialPortParams(115200, SerialPort.DATABITS_8, //
                                SerialPort.STOPBITS_1, SerialPort.PARITY_NONE);

                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                }
                if ("COM7".equals(portId.getName())) {
//                    System.out.println("找到串口COM5");
                    // 打开串口
                    try {
                        // open:（应用程序名【随意命名】，阻塞时等待的毫秒数）
                        serialPort = (SerialPort) portId.open("0777", 2000);
//                        serialPort = (SerialPort) portId.open(Object.class.getSimpleName(), 2000);
                        serialPort = (SerialPort) portId.open(FileDescriptor.in);
//                        System.out.println("获取到串口对象,COM5");
                        //实例化输入流
                        inputStream = serialPort.getInputStream();
                        // 设置串口监听
                        serialPort.addEventListener(this);
                        // 设置串口数据时间有效(可监听)
                        serialPort.notifyOnDataAvailable(true);
                        // 设置串口通讯参数
                        // 波特率，数据位，停止位和校验方式
                        // 波特率2400,偶校验
                        serialPort.setSerialPortParams(115200, SerialPort.DATABITS_8, //
                                SerialPort.STOPBITS_1, SerialPort.PARITY_NONE);

                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                }
                if ("COM6".equals(portId.getName())) {
//                    System.out.println("找到串口COM5");
                    // 打开串口
                    try {
                        // open:（应用程序名【随意命名】，阻塞时等待的毫秒数）
                        serialPort = (SerialPort) portId.open("0666", 2000);
//                        serialPort = (SerialPort) portId.open(Object.class.getSimpleName(), 2000);
                        serialPort = (SerialPort) portId.open(FileDescriptor.in);
//                        System.out.println("获取到串口对象,COM5");
                        //实例化输入流
                        inputStream = serialPort.getInputStream();
                        // 设置串口监听
                        serialPort.addEventListener(this);
                        // 设置串口数据时间有效(可监听)
                        serialPort.notifyOnDataAvailable(true);
                        // 设置串口通讯参数
                        // 波特率，数据位，停止位和校验方式
                        // 波特率2400,偶校验
                        serialPort.setSerialPortParams(115200, SerialPort.DATABITS_8, //
                                SerialPort.STOPBITS_1, SerialPort.PARITY_NONE);

                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                }
                if ("COM5".equals(portId.getName())) {
//                    System.out.println("找到串口COM5");
                    // 打开串口
                    try {
                        // open:（应用程序名【随意命名】，阻塞时等待的毫秒数）
                        serialPort = (SerialPort) portId.open("0555", 2000);
//                        serialPort = (SerialPort) portId.open(Object.class.getSimpleName(), 2000);
                        serialPort = (SerialPort) portId.open(FileDescriptor.in);
//                        System.out.println("获取到串口对象,COM5");
                        //实例化输入流
                        inputStream = serialPort.getInputStream();
                        // 设置串口监听
                        serialPort.addEventListener(this);
                        // 设置串口数据时间有效(可监听)
                        serialPort.notifyOnDataAvailable(true);
                        // 设置串口通讯参数
                        // 波特率，数据位，停止位和校验方式
                        // 波特率2400,偶校验
                        serialPort.setSerialPortParams(115200, SerialPort.DATABITS_8, //
                                SerialPort.STOPBITS_1, SerialPort.PARITY_NONE);

                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                }
                // 比较串口名称是否是"COM4"
                if ("COM4".equals(portId.getName())) {
//                    System.out.println("找到串口COM4");
                    // 打开串口
                    try {
                        // open:（应用程序名【随意命名】，阻塞时等待的毫秒数）
                        serialPort = (SerialPort) portId.open("0444", 5000);
//                        serialPort = (SerialPort) portId.open(Object.class.getSimpleName(), 2000);
//                        serialPort= (SerialPort) portId.open(FileDescriptor.in);
//                        System.out.println("获取到串口对象,COM4");
                        //实例化输入流
                        inputStream = serialPort.getInputStream();
                        // 设置串口监听
                        serialPort.addEventListener(this);
                        // 设置串口数据时间有效(可监听)
                        serialPort.notifyOnDataAvailable(true);
                        // 设置串口通讯参数
                        // 波特率，数据位，停止位和校验方式
                        // 波特率2400,偶校验
                        serialPort.setSerialPortParams(115200, SerialPort.DATABITS_8, //
                                SerialPort.STOPBITS_1, SerialPort.PARITY_NONE);

                    } catch (PortInUseException e) {
                        e.printStackTrace();
                    } catch (TooManyListenersException e) {
                        e.printStackTrace();
                    } catch (UnsupportedCommOperationException e) {
                        e.printStackTrace();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }

                }
                // 比较串口名称是否是"COM3"
                if ("COM3".equals(portId.getName())) {
//                    System.out.println("找到串口COM3");
                    // 打开串口
                    try {
                        // open:（应用程序名【随意命名】，阻塞时等待的毫秒数）
                        serialPort = (SerialPort) portId.open("0333", 2000);
//                        System.out.println("获取到串口对象,COM3");
                        //实例化输入流
                        inputStream = serialPort.getInputStream();
                        // 设置串口监听
                        serialPort.addEventListener(this);
                        // 设置串口数据时间有效(可监听)
                        serialPort.notifyOnDataAvailable(true);
                        // 设置串口通讯参数
                        // 波特率，数据位，停止位和校验方式
                        // 波特率2400,偶校验
                        serialPort.setSerialPortParams(115200, SerialPort.DATABITS_8, //
                                SerialPort.STOPBITS_1, SerialPort.PARITY_NONE);

                    } catch (PortInUseException e) {
                        e.printStackTrace();
                    } catch (TooManyListenersException e) {
                        e.printStackTrace();
                    } catch (UnsupportedCommOperationException e) {
                        e.printStackTrace();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }

                }
                if ("COM2".equals(portId.getName())) {
//                    System.out.println("找到串口COM2");
                    // 打开串口
                    try {
                        // open:（应用程序名【随意命名】，阻塞时等待的毫秒数）
                        serialPort = (SerialPort) portId.open(Object.class.getSimpleName(), 2000);
//                        System.out.println("获取到串口对象,COM2");
                        //实例化输入流
                        inputStream = serialPort.getInputStream();
                        // 设置串口监听
                        serialPort.addEventListener(this);
                        // 设置串口数据时间有效(可监听)
                        serialPort.notifyOnDataAvailable(true);
                        // 设置串口通讯参数
                        // 波特率，数据位，停止位和校验方式
                        // 波特率2400,偶校验
                        serialPort.setSerialPortParams(115200, SerialPort.DATABITS_8, //
                                SerialPort.STOPBITS_1, SerialPort.PARITY_NONE);

                    } catch (PortInUseException e) {
                        e.printStackTrace();
                    } catch (TooManyListenersException e) {
                        e.printStackTrace();
                    } catch (UnsupportedCommOperationException e) {
                        e.printStackTrace();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }

                }
                if ("COM1".equals(portId.getName())) {
//                    System.out.println("找到串口COM1");
                    // 打开串口
                    try {
                        // open:（应用程序名【随意命名】，阻塞时等待的毫秒数）
                        serialPort = (SerialPort) portId.open(Object.class.getSimpleName(), 2000);
//                        System.out.println("获取到串口对象,COM1");
                        //实例化输入流
                        inputStream = serialPort.getInputStream();
                        // 设置串口监听
                        serialPort.addEventListener(this);
                        // 设置串口数据时间有效(可监听)
                        serialPort.notifyOnDataAvailable(true);
                        // 设置串口通讯参数
                        // 波特率，数据位，停止位和校验方式
                        // 波特率2400,偶校验
                        serialPort.setSerialPortParams(115200, SerialPort.DATABITS_8, //
                                SerialPort.STOPBITS_1, SerialPort.PARITY_NONE);

                    } catch (PortInUseException e) {
                        e.printStackTrace();
                    } catch (TooManyListenersException e) {
                        e.printStackTrace();
                    } catch (UnsupportedCommOperationException e) {
                        e.printStackTrace();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }

                }
            }
        }
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
