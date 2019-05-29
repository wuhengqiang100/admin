package com.xiaoshu.admin;

import com.xiaoshu.admin.entity.FarmData;
import com.xiaoshu.admin.entity.JsonData.FarmDataFromJson;
import com.xiaoshu.common.util.JsonParseUtil;

public class JsonParseTest {
    public static void main(String[] args) {
        String string="{\n" +
                "\t\"Net\":\t{\n" +
                "\t\t\"NetID\":\t\"1\",\n" +
                "\t\t\"IDnode\":\t\"3\",\n" +
                "\t\t\"Netaddr\":\t\"20\"\n" +
                "\t},\n" +
                "\t\"LightSensor\":\t{\n" +
                "\t\t\"attribute\":\t{\n" +
                "\t\t\t\"Type\":\t\"Illumination_Sensor\",\n" +
                "\t\t\t\"Model\":\t\"GY-30\",\n" +
                "\t\t\t\"Precision\":\t\"+-5\",\n" +
                "\t\t\t\"Range\":\t\"0-65535 lx\",\n" +
                "\t\t\t\"Working_Voltage\":\t\"3.3V\"\n" +
                "\t\t},\n" +
                "\t\t\"status\":\t{\n" +
                "\t\t\t\"WorkModel\":\t\"1\",\n" +
                "\t\t\t\"Value\":\t\"0.55 lx\"\n" +
                "\t\t}\n" +
                "\t},\n" +
                "\t\"Soiltempature\":\t{\n" +
                "\t\t\"attribute\":\t{\n" +
                "\t\t\t\"Type\":\t\"Soiltemperature_sensor\",\n" +
                "\t\t\t\"Model\":\t\"DS18B20\",\n" +
                "\t\t\t\"Precision\":\t\"+-0.5\",\n" +
                "\t\t\t\"Range\":\t\"0-120 ℃\",\n" +
                "\t\t\t\"Working_Voltage\":\t\"3.3-5V\"\n" +
                "\t\t},\n" +
                "\t\t\"status\":\t{\n" +
                "\t\t\t\"WorkModel\":\"1\",\n" +
                "\t\t\t\"Value\":\"15.41 ℃\"\n" +
                "\t\t}\n" +
                "\t},\n" +
                "\t\"Soilmoisture\":\t{\n" +
                "\t\t\"attribute\":\t{\n" +
                "\t\t\t\"Type\":\t\"Soilmoisture_sensor\",\n" +
                "\t\t\t\"Model\":\t\"DY-69\",\n" +
                "\t\t\t\"Precision\":\t\"+-0.5\",\n" +
                "\t\t\t\"Range\":\t\"0-99 %\",\n" +
                "\t\t\t\"Working_Voltage\":\t\"3.3-5V\"\n" +
                "\t\t},\n" +
                "\t\t\"status\":\t{\n" +
                "\t\t\t\"WorkModel\":\t\"1\",\n" +
                "\t\t\t\"Value\":\t\"0.04 %\"\n" +
                "\t\t}\n" +
                "\t}\n" +
                "}\n";
        FarmDataFromJson farmDataFromJson= JsonParseUtil.parseFarmData(string);
        FarmData farmData=JsonParseUtil.parseFarmDataFromJson(farmDataFromJson);

    }
}
