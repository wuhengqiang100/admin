package com.xiaoshu.common.util;

import com.xiaoshu.admin.entity.FarmManagerType;

import java.util.ArrayList;
import java.util.List;

public class FarmManagerUtil {
    public static List<FarmManagerType> getFarmManagerTypeList(){
        FarmManagerType farmTemperManagerType=new FarmManagerType();
        farmTemperManagerType.setId("temperManager");
        farmTemperManagerType.setFarmManagerType("温度管理员");
        FarmManagerType farmHumManagerType=new FarmManagerType();
        farmHumManagerType.setId("humManager");
        farmHumManagerType.setFarmManagerType("湿度管理员");
        FarmManagerType farmIllManagerType=new FarmManagerType();
        farmIllManagerType.setId("illManager");
        farmIllManagerType.setFarmManagerType("光照管理员");

        List<FarmManagerType> farmManagerTypeList=new ArrayList<>();
        farmManagerTypeList.add(farmTemperManagerType);
        farmManagerTypeList.add(farmHumManagerType);
        farmManagerTypeList.add(farmIllManagerType);
        return farmManagerTypeList;
    }
}
