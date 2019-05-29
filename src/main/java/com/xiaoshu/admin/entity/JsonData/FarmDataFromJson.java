package com.xiaoshu.admin.entity.JsonData;

/**
 * 解析的json总实体
 */
public class FarmDataFromJson {

    Net net;//网络实体

    LightSensor lightSensor;//光照数据实体

    Soiltempature soiltempature;//温度数据实体

    Soilmoisture soilmoisture;//湿度数据实体

    public Net getNet() {
        return net;
    }

    public void setNet(Net net) {
        this.net = net;
    }

    public LightSensor getLightSensor() {
        return lightSensor;
    }

    public void setLightSensor(LightSensor lightSensor) {
        this.lightSensor = lightSensor;
    }

    public Soiltempature getSoiltempature() {
        return soiltempature;
    }

    public void setSoiltempature(Soiltempature soiltempature) {
        this.soiltempature = soiltempature;
    }

    public Soilmoisture getSoilmoisture() {
        return soilmoisture;
    }

    public void setSoilmoisture(Soilmoisture soilmoisture) {
        this.soilmoisture = soilmoisture;
    }

    @Override
    public String toString() {
        return "FarmDataFromJson{" +
                "net=" + net +
                ", lightSensor=" + lightSensor +
                ", soiltempature=" + soiltempature +
                ", soilmoisture=" + soilmoisture +
                '}';
    }
}
