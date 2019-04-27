package com.xiaoshu.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.xiaoshu.admin.entity.LoginData;
import com.xiaoshu.admin.entity.vo.LoginEchats;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface LoginDataMapper extends BaseMapper<LoginData> {

//    void saveLoginDataMenus(@Param("roleId") String roleId, @Param("menus") Set<Menu> menuSet);

//      LoginData selectLoginDataById(@Param("id") String id);
//
//      List<LoginData> getLoginDataByUserId(@Param("userId") String userId);

    /**
     * 获取最近的访问数据，访问时间＋访问次数
     * @return
     */
    List<LoginEchats> getLoginDataEcharts();


    /**
     * 根据用户id获取该用户前几次操作的数据，计算信誉度
     * @param id
     * @return
     */
    List<LoginData> getLoginDataWthOutCount(String userId);

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
     int updateLoginDataNew(LoginData loginData);

    /**
     * 更新这一次登录的数据,重复登录次数,重复刷新次数,越权访问次数,未安全退出次数
     * @param loginData
     * @return
     */
     int updateLoginDataBeforeLogin(LoginData loginData);

    /**
     * 计算数据完后，更新is_account
     * @param loginData
     * @return
     */
     int updateLoginDataOnlyIsAccount(LoginData loginData);

//    void dropLoginDataMenus(@Param("roleId") String roleId);

//    void dropLoginDataUsers(@Param("roleId") String roleId);
}