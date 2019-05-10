package com.xiaoshu.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.xiaoshu.admin.entity.FarmArea02;
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

    /**
     * 农田区块查询具体信息
     * 根据条件查询农田的详细数据
     * @param farmArea02
     * @return
     */
    List<FarmData> getFarmDataDetail(FarmArea02 farmArea02);
    /**
     * 根据FarmArea02的farmId和area查FarmArea全部信息
     * @param farmArea02
     * @return
     */
    FarmArea02 getFarmAreaByFarmArea(FarmArea02 farmArea02);
}
