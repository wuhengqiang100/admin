package com.xiaoshu.common.util;


import com.alibaba.fastjson.JSONObject;
import com.xiaoshu.admin.entity.FarmData;
import com.xiaoshu.admin.entity.JsonData.*;

import java.util.Date;

/**
 * 解析串口json数据工具类
 */
public class JsonParseUtil {

    /**
     * 判断农田的传感器采集器是否有问题,没有问题返回true,有问题返回报错字符串
     * @param farmData
     * @return
     */
    public static StringBuffer parseFarmDataFlag(FarmData farmData){
        StringBuffer str=new StringBuffer("farmData.getFarm()+'.'+farmData.getArea()"+"农田区块");
        int errorCount=0;
        if ("0"==farmData.getSensor1_temperature_flag()){
            str.append("温度采集器");
            errorCount++;
        }
        if ("0"== farmData.getSensor1_humidity_flag()){
            str.append(",湿度采集器");
            errorCount++;
        }
        if ("0"==farmData.getSensor1_illumination_flag()){
            str.append(",光照采集器");
            errorCount++;
        }
        str.append("有问题");
        if (errorCount>0){
            return str;
        }else{
            return new StringBuffer("true");
        }
    }


    /**
     * 将FarmDataFromJson转化为farmData数据存储数据库
     * @param farmDataFromJson
     * @return
     */
    public static FarmData parseFarmDataFromJson(FarmDataFromJson farmDataFromJson){
        FarmData farmData=new FarmData();
        //温度数据,以及温度传感器是否正常工作标志
        farmData.setTemperature(farmDataFromJson.getSoiltempature().getStatus().getValue());
        farmData.setSensor1_temperature_flag(farmDataFromJson.getSoiltempature().getStatus().getWorkModel());

        farmData.setIllumination(farmDataFromJson.getLightSensor().getStatus().getValue());
        farmData.setSensor1_illumination_flag(farmDataFromJson.getLightSensor().getStatus().getWorkModel());

        farmData.setHumidity(farmDataFromJson.getSoilmoisture().getStatus().getValue());
        farmData.setSensor1_humidity_flag(farmDataFromJson.getSoilmoisture().getStatus().getWorkModel());

        farmData.setFarmId(Integer.parseInt(farmDataFromJson.getNet().getNetID()));
        farmData.setArea(Integer.parseInt(farmDataFromJson.getNet().getIDnode()));
        farmData.setTime(new Date());//采集时间
        farmData.setAlertFlag(0);//数据是否报警标志
        return  farmData;
    }

    /**
     * 将json解析成java实体
     * @param str
     * @return
     */
    public static FarmDataFromJson parseFarmData(String str){
        JSONObject jsonObject = JSONObject
                .parseObject(str);
        //解析的总数据实体
        FarmDataFromJson farmDataFromJson=new FarmDataFromJson();
        Net net = new Net();//网络实体
        LightSensor lightSensor = new LightSensor();//光照数据实体
        status lightStatus=new status();
        Soiltempature soiltempature = new Soiltempature();//温度数据实体
        status tempatureStatus=new status();
        Soilmoisture soilmoisture = new Soilmoisture();//湿度数据实体
        status soilStatus=new status();

        JSONObject netObject=new JSONObject();
        JSONObject lightObject=new JSONObject();
        JSONObject lightStatusObject=new JSONObject();

        JSONObject tempatureObject=new JSONObject();
        JSONObject tempatureStatusObject=new JSONObject();

        JSONObject soilObject=new JSONObject();
        JSONObject soilStatusObject=new JSONObject();
        //解析net实体数据
        netObject= (JSONObject) jsonObject.get("Net");
        net.setNetID(netObject.getString("NetID"));
        net.setIDnode(netObject.getString("IDnode"));
        net.setNetaddr(netObject.getString("Netaddr"));
        //解析light光照实体数据
        lightObject= (JSONObject) jsonObject.get("LightSensor");
        lightStatusObject= (JSONObject) lightObject.get("status");
        lightStatus.setWorkModel(lightStatusObject.getString("WorkModel"));
        lightStatus.setValue(lightStatusObject.getString("Value"));
        lightSensor.setStatus(lightStatus);
        //解析tempature温度实体数据
        tempatureObject= (JSONObject) jsonObject.get("Soiltempature");
        tempatureStatusObject= (JSONObject) tempatureObject.get("status");
        tempatureStatus.setWorkModel(tempatureStatusObject.getString("WorkModel"));
        tempatureStatus.setValue(tempatureStatusObject.getString("Value"));
        soiltempature.setStatus(tempatureStatus);

        //解析soil湿度实体数据
        soilObject= (JSONObject) jsonObject.get("Soilmoisture");
        soilStatusObject= (JSONObject) soilObject.get("status");
        soilStatus.setWorkModel(soilStatusObject.getString("WorkModel"));
        soilStatus.setValue(soilStatusObject.getString("Value"));
        soilmoisture.setStatus(soilStatus);

        //汇总总的数据
        farmDataFromJson.setNet(net);
        farmDataFromJson.setLightSensor(lightSensor);
        farmDataFromJson.setSoiltempature(soiltempature);
        farmDataFromJson.setSoilmoisture(soilmoisture);

        return farmDataFromJson;
    }
}
