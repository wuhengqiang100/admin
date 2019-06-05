package com.xiaoshu.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.xiaoshu.admin.entity.FarmArea02;
import com.xiaoshu.admin.entity.FarmData;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 农田数据mapper接口
 */
public interface FarmDataMapper extends BaseMapper<FarmData> {

//    void saveFarmMenus(@Param("roleId") String roleId, @Param("menus") Set<Menu> menuSet);
      /**
       * 更新报警标志位0
       * @param farmData
       */
      void updateOnlyAlertFlag(FarmData farmData);
      /**
       * 获取所有没有检查报警的农田数据
       * @return
       */
      List<FarmData> getNotAlertFarmData(@Param("farmId") int farmId);
      Integer saveParseJsonData(FarmData farmData);

      FarmData selectFarmDataById(@Param("id") String id);

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