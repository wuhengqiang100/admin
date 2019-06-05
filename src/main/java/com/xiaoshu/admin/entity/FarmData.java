package com.xiaoshu.admin.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

/**
 * 农田数据实体类
 */
@TableName("nongtianmysqldata")
public class FarmData {

    @TableId(type = IdType.AUTO)
    private Integer id;

    @TableField("time")
    private Date time;
    @TableField("temperature")
    private String temperature;//温度
    @TableField("humidity")
    private String humidity;//湿度
    @TableField("illumination")
    private String illumination;//光照
    @TableField("sensor1_temperature_flag")
    private String sensor1_temperature_flag;
    @TableField("sensor2_temperature_flag")
    private String sensor2_temperature_flag;
    @TableField("sensor3_temperature_flag")
    private String sensor3_temperature_flag;

    @TableField("sensor1_humidity_flag")
    private String sensor1_humidity_flag;
    @TableField("sensor2_humidity_flag")
    private String sensor2_humidity_flag;
    @TableField("sensor3_humidity_flag")
    private String sensor3_humidity_flag;
    @TableField("sensor1_illumination_flag")
    private String sensor1_illumination_flag;
    @TableField("sensor2_illumination_flag")
    private String sensor2_illumination_flag;
    @TableField("sensor3_illumination_flag")
    private String sensor3_illumination_flag;
    @TableField("node_Powerflag")
    private String node_Powerflag;

    @TableField("farm_id")
    private int farmId;

    @TableField("area")
    private int area;//农田的区块id

    @TableField("alert_flag")
    private int alertFlag;//农田的区块id




    @TableField(exist=false)
    private Farm farm;
    @TableField(exist=false)
    private FarmArea farmArea;



    public FarmData() {
    }

    public int getAlertFlag() {
        return alertFlag;
    }

    public void setAlertFlag(int alertFlag) {
        this.alertFlag = alertFlag;
    }

    public FarmArea getFarmArea() {
        return farmArea;
    }

    public void setFarmArea(FarmArea farmArea) {
        this.farmArea = farmArea;
    }

    public int getFarmId() {
        return farmId;
    }

    public void setFarmId(int farmId) {
        this.farmId = farmId;
    }

    public int getArea() {
        return area;
    }

    public void setArea(int area) {
        this.area = area;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getTemperature() {
        return temperature;
    }

    public void setTemperature(String temperature) {
        this.temperature = temperature;
    }

    public String getHumidity() {
        return humidity;
    }

    public void setHumidity(String humidity) {
        this.humidity = humidity;
    }

    public String getIllumination() {
        return illumination;
    }

    public void setIllumination(String illumination) {
        this.illumination = illumination;
    }

    public String getSensor1_temperature_flag() {
        return sensor1_temperature_flag;
    }

    public void setSensor1_temperature_flag(String sensor1_temperature_flag) {
        this.sensor1_temperature_flag = sensor1_temperature_flag;
    }

    public String getSensor2_temperature_flag() {
        return sensor2_temperature_flag;
    }

    public void setSensor2_temperature_flag(String sensor2_temperature_flag) {
        this.sensor2_temperature_flag = sensor2_temperature_flag;
    }

    public String getSensor3_temperature_flag() {
        return sensor3_temperature_flag;
    }

    public void setSensor3_temperature_flag(String sensor3_temperature_flag) {
        this.sensor3_temperature_flag = sensor3_temperature_flag;
    }

    public String getSensor1_humidity_flag() {
        return sensor1_humidity_flag;
    }

    public void setSensor1_humidity_flag(String sensor1_humidity_flag) {
        this.sensor1_humidity_flag = sensor1_humidity_flag;
    }

    public String getSensor2_humidity_flag() {
        return sensor2_humidity_flag;
    }

    public void setSensor2_humidity_flag(String sensor2_humidity_flag) {
        this.sensor2_humidity_flag = sensor2_humidity_flag;
    }

    public String getSensor3_humidity_flag() {
        return sensor3_humidity_flag;
    }

    public void setSensor3_humidity_flag(String sensor3_humidity_flag) {
        this.sensor3_humidity_flag = sensor3_humidity_flag;
    }

    public String getSensor1_illumination_flag() {
        return sensor1_illumination_flag;
    }

    public void setSensor1_illumination_flag(String sensor1_illumination_flag) {
        this.sensor1_illumination_flag = sensor1_illumination_flag;
    }

    public String getSensor2_illumination_flag() {
        return sensor2_illumination_flag;
    }

    public void setSensor2_illumination_flag(String sensor2_illumination_flag) {
        this.sensor2_illumination_flag = sensor2_illumination_flag;
    }

    public String getSensor3_illumination_flag() {
        return sensor3_illumination_flag;
    }

    public void setSensor3_illumination_flag(String sensor3_illumination_flag) {
        this.sensor3_illumination_flag = sensor3_illumination_flag;
    }

    public String getNode_Powerflag() {
        return node_Powerflag;
    }

    public void setNode_Powerflag(String node_Powerflag) {
        this.node_Powerflag = node_Powerflag;
    }

    public Farm getFarm() {
        return farm;
    }

    public void setFarm(Farm farm) {
        this.farm = farm;
    }


}
