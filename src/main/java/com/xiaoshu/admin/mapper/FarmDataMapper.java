package com.xiaoshu.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.xiaoshu.admin.entity.FarmData;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 农田数据mapper接口
 */
public interface FarmDataMapper extends BaseMapper<FarmData> {

//    void saveFarmMenus(@Param("roleId") String roleId, @Param("menus") Set<Menu> menuSet);

      FarmData selectFarmDataById(@Param("id") String id);

      List<FarmData> getFarmDataByFarmId(@Param("farmId") String farmId);


}