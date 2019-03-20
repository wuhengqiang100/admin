package com.xiaoshu.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.xiaoshu.admin.entity.Farm;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface FarmMapper extends BaseMapper<Farm> {

//    void saveFarmMenus(@Param("roleId") String roleId, @Param("menus") Set<Menu> menuSet);

      Farm selectFarmById(@Param("id") String id);

      List<Farm> getFarmByUserId(@Param("userId") String userId);




//    void dropFarmMenus(@Param("roleId") String roleId);

//    void dropFarmUsers(@Param("roleId") String roleId);
}