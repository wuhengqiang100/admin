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

}