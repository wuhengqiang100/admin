package com.xiaoshu.common.util;

import com.alibaba.fastjson.JSONObject;
import com.xiaoshu.admin.entity.FarmData;
import com.xiaoshu.admin.entity.JsonData.*;

/**
 * 解析串口json数据工具类
 */
public class JsonParseUtil {

    /**
     * 将FarmDataFromJson转化为farmData数据存储数据库
     * @param farmDataFromJson
     * @return
     */
    public static FarmData parseFarmDataFromJson(FarmDataFromJson farmDataFromJson){
        FarmData farmData=new FarmData();
        farmData.setTemperature(farmDataFromJson.getSoiltempature().getStatus().getValue());
        farmData.setIllumination(farmDataFromJson.getLightSensor().getStatus().getValue());
        farmData.setHumidity(farmDataFromJson.getSoilmoisture().getStatus().getValue());
        farmData.setFarmId(Integer.parseInt(farmDataFromJson.getNet().getNetID()));
        farmData.setArea(Integer.parseInt(farmDataFromJson.getNet().getIDnode()));
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
        attribute lightAttribute=new attribute();
        status lightStatus=new status();
        Soiltempature soiltempature = new Soiltempature();//温度数据实体
        attribute tempatureAttribute=new attribute();
        status tempatureStatus=new status();
        Soilmoisture soilmoisture = new Soilmoisture();//湿度数据实体
        attribute soilAttribute=new attribute();
        status soilStatus=new status();

        JSONObject netObject=new JSONObject();
        JSONObject lightObject=new JSONObject();
        JSONObject lightAttributeObject=new JSONObject();
        JSONObject lightStatusObject=new JSONObject();

        JSONObject tempatureObject=new JSONObject();
        JSONObject tempatureAttributeObject=new JSONObject();
        JSONObject tempatureStatusObject=new JSONObject();

        JSONObject soilObject=new JSONObject();
        JSONObject soilAttributeObject=new JSONObject();
        JSONObject soilStatusObject=new JSONObject();
        //解析net实体数据
        netObject= (JSONObject) jsonObject.get("Net");
        net.setNetID(netObject.getString("NetID"));
        net.setIDnode(netObject.getString("IDnode"));
        net.setNetaddr(netObject.getString("Netaddr"));
        //解析light光照实体数据
        lightObject= (JSONObject) jsonObject.get("LightSensor");
        lightAttributeObject= (JSONObject) lightObject.get("attribute");
        lightAttribute.setType(lightAttributeObject.getString("Type"));
        lightAttribute.setModel(lightAttributeObject.getString("Model"));
        lightAttribute.setPrecision(lightAttributeObject.getString("Precision"));
        lightAttribute.setRange(lightAttributeObject.getString("Range"));
        lightAttribute.setWorking_Voltage(lightAttributeObject.getString("Working_Voltage"));
        lightStatusObject= (JSONObject) lightObject.get("status");
        lightStatus.setWorkModel(lightStatusObject.getString("WorkModel"));
        lightStatus.setValue(lightStatusObject.getString("Value"));
        lightSensor.setAttribute(lightAttribute);
        lightSensor.setStatus(lightStatus);
        //解析tempature温度实体数据
        tempatureObject= (JSONObject) jsonObject.get("Soiltempature");
        tempatureAttributeObject= (JSONObject) tempatureObject.get("attribute");
        tempatureAttribute.setType(tempatureAttributeObject.getString("Type"));
        tempatureAttribute.setModel(tempatureAttributeObject.getString("Model"));
        tempatureAttribute.setPrecision(tempatureAttributeObject.getString("Precision"));
        tempatureAttribute.setRange(tempatureAttributeObject.getString("Range"));
        tempatureAttribute.setWorking_Voltage(tempatureAttributeObject.getString("Working_Voltage"));
        tempatureStatusObject= (JSONObject) tempatureObject.get("status");
        tempatureStatus.setWorkModel(tempatureStatusObject.getString("WorkModel"));
        tempatureStatus.setValue(tempatureStatusObject.getString("Value"));
        soiltempature.setAttribute(tempatureAttribute);
        soiltempature.setStatus(tempatureStatus);

        //解析soil湿度实体数据
        soilObject= (JSONObject) jsonObject.get("Soilmoisture");
        soilAttributeObject= (JSONObject) soilObject.get("attribute");
        soilAttribute.setType(soilAttributeObject.getString("Type"));
        soilAttribute.setModel(soilAttributeObject.getString("Model"));
        soilAttribute.setPrecision(soilAttributeObject.getString("Precision"));
        soilAttribute.setRange(soilAttributeObject.getString("Range"));
        soilAttribute.setWorking_Voltage(soilAttributeObject.getString("Working_Voltage"));
        soilAttributeObject= (JSONObject) soilObject.get("status");
        soilStatus.setWorkModel(soilAttributeObject.getString("WorkModel"));
        soilStatus.setValue(soilAttributeObject.getString("Value"));
        soilmoisture.setAttribute(soilAttribute);
        soilmoisture.setStatus(soilStatus);

        //汇总总的数据
        farmDataFromJson.setNet(net);
        farmDataFromJson.setLightSensor(lightSensor);
        farmDataFromJson.setSoiltempature(soiltempature);
        farmDataFromJson.setSoilmoisture(soilmoisture);

        return farmDataFromJson;
    }
}
