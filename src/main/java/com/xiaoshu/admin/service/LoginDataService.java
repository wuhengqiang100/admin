package com.xiaoshu.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.xiaoshu.admin.entity.LoginData;
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
     * 更新登录后的数据
     * @param loginData
     */
      void updateLoginData(LoginData loginData);

//
     LoginData getLoginDataById(String id);

    /**
     * 得到上一次登录系统后的操作数据
     * @param userId
     * @return
     */
     LoginData getLastDataByUserId(@Param("userId") String userId);
//

//
//    void deleteLoginData(LoginData LoginData);
//
//    List<LoginData> selectAll();
//
//    List<LoginData> getLoginDataByUserId(String userId);
}
