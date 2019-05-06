package com.xiaoshu.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.xiaoshu.admin.entity.FarmData;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 农田service接口层
 */
public interface FarmDataService extends IService<FarmData> {

/*    long getFarmDataNameCount(String name);

    FarmData saveFarmData(FarmData FarmData);

    FarmData getFarmDataById(String id);

    void updateFarmData(FarmData farm);

    void deleteFarmData(FarmData farm);*/

//    List<FarmData> selectAll();
//
//    List<FarmData> getFarmDataByUserId(String userId);

    /**
     * 根据农田id获取农田数据
     * @param farmId
     * @return
     */
    List<FarmData> getFarmDataByFarmId(@Param("farmId") int farmId);

    /**
     * 根据农田id获得最新的一条农田数据
     * @param farmId
     * @return
     */
    FarmData getMostNewFarmData(@Param("farmId") int farmId);
}
