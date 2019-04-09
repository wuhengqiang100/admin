package com.xiaoshu.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.xiaoshu.admin.entity.LoginData;
import org.apache.ibatis.annotations.Param;


public interface LoginDataMapper extends BaseMapper<LoginData> {

//    void saveLoginDataMenus(@Param("roleId") String roleId, @Param("menus") Set<Menu> menuSet);

//      LoginData selectLoginDataById(@Param("id") String id);
//
//      List<LoginData> getLoginDataByUserId(@Param("userId") String userId);

    /**
     * 第一次插入登录后的数据,返回数据id
     * @param loginData
     * @return
     */
     int insertLoginDataWithResult(LoginData loginData);

    /**
     * 得到上一次登录系统后的操作数据
     * @param userId
     * @return
     */
     LoginData getLastDataByUserId(@Param("userId") String userId);

    /**
     * 更新这一次登录的数据,重复登录次数,重复刷新次数,越权访问次数,未安全退出次数
     * @param loginData
     * @return
     */
     int updateLoginData(LoginData loginData);

    /**
     * 更新这一次登录的数据,重复登录次数,重复刷新次数,越权访问次数,未安全退出次数
     * @param loginData
     * @return
     */
     int updateLoginDataBeforeLogin(LoginData loginData);



//    void dropLoginDataMenus(@Param("roleId") String roleId);

//    void dropLoginDataUsers(@Param("roleId") String roleId);
}