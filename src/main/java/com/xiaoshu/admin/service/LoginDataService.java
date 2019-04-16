package com.xiaoshu.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.xiaoshu.admin.entity.LoginData;
import com.xiaoshu.admin.entity.User;
import org.apache.ibatis.annotations.Param;


/**
 * 信誉度计算service接口层
 */
public interface LoginDataService extends IService<LoginData> {

//    long getLoginDataNameCount(String name);
//

    /**
     * 保存登录时的数据
     * @param loginData
     * @return String 生成记录的id
     */
     int saveLoginData(LoginData loginData);

    /**
     * 报错登录失败而没有上一次登录的数据，新增
     * @param loginData
     * @return String 生成记录的id
     */
     int saveLoginDataWithOutLastLogin(LoginData loginData,User user);


    /**
     * 只更新是否安全退出，更新登录后的数据
     * @param loginData
     */
      void updateLoginDataOnlyIsSafeLogout(LoginData loginData);
    /**
     * 只更新重复刷新次数，更新登录后的数据
     * @param loginData
     */
     void updateLoginDataOnlyRepeatRefresh(LoginData loginData);
    /**
     * 只更新为成功登录的次数，更新登录后的数据
     * @param loginData
     */
    void updateLoginDataOnlyUnLogin(LoginData loginData);

//
     LoginData getLoginDataById(String id);

    /**
     * 得到上一次登录系统后的操作数据
     * @param userId
     * @return
     */
     LoginData getLastDataByUserId(@Param("userId") String userId);
//

    /**
     * 更新这一次登录的数据,重复登录次数,重复刷新次数,越权访问次数,未安全退出次数
     * @param loginData
     * @return
     */
    int updateLoginData(LoginData loginData);
    /**
     * 更新登录前的登录数据,这一次登录的数据,重复登录次数,重复刷新次数,越权访问次数,未安全退出次数
     * @param loginData
     * @return
     */
    int updateLoginDataBeforeLogin(LoginData loginData);

//
//    void deleteLoginData(LoginData LoginData);
//
//    List<LoginData> selectAll();
//
//    List<LoginData> getLoginDataByUserId(String userId);
}
