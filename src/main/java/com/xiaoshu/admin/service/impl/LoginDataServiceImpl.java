package com.xiaoshu.admin.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xiaoshu.admin.entity.LoginData;
import com.xiaoshu.admin.mapper.LoginDataMapper;
import com.xiaoshu.admin.service.LoginDataService;
import com.xiaoshu.common.config.MySysUser;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


/**
 * 信誉度计算service实现层
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class LoginDataServiceImpl extends ServiceImpl<LoginDataMapper,LoginData> implements LoginDataService {

    /**
     * 登录时保存访问的数据
     * @param loginData
     */
    @Override
    public int saveLoginData(LoginData loginData) {
        loginData.setUserId(MySysUser.id());
        loginData.setUnsafeLogout(false);//正常登录,未安全退出
        loginData.setAccount(false);
        return baseMapper.insertLoginDataWithResult(loginData);
    }

    /**
     * 更新登录后的数据
     * @param loginData
     */
    @Override
    public void updateLoginData(LoginData loginData) {
//        QueryWrapper<LoginData> wrapper = new QueryWrapper<>();
//        wrapper.eq("is_unsafe_logout",true);
        loginData.setUnsafeLogout(true);
        baseMapper.updateById(loginData);
//        /baseMapper.updateById(loginData);
    }

    @Override
    public LoginData getLoginDataById(String id) {
        return baseMapper.selectById(id);
    }

    /**
     * 得到上一次登录系统后的操作数据
     * @param userId
     * @return
     */
    @Override
    public LoginData getLastDataByUserId(String userId) {
        return baseMapper.getLastDataByUserId(userId);
    }

//    /**
//     * 获得同一农田名字的数目
//     * @param name
//     * @return
//     */
//    @Override
//    public long getLoginDataNameCount(String name) {
//        QueryWrapper<LoginData> wrapper = new QueryWrapper<>();
//        wrapper.eq("name",name);
//        return baseMapper.selectCount(wrapper);
//    }
//
//    @Override
//    @Transactional(rollbackFor = Exception.class)
//    public LoginData saveLoginData(LoginData LoginData) {
//        baseMapper.insert(LoginData);
//        return LoginData;
//    }
//
//
//    @Override
//    public LoginData getLoginDataById(String id) {
//        return baseMapper.selectLoginDataById(id);
//    }
//
//    @Override
//    @Transactional(rollbackFor = Exception.class)
//    public void updateLoginData(LoginData LoginData) {
//        baseMapper.updateById(LoginData);
//    }
//
//    @Override
//    @Transactional(rollbackFor = Exception.class)
//    public void deleteLoginData(LoginData LoginData) {
//        LoginData.setDelFlag(true);
//        baseMapper.updateById(LoginData);
//
//    }
//
//    @Override
//    public List<LoginData> selectAll() {
//        QueryWrapper wrapper = new QueryWrapper();
////        wrapper.eq("del_flag",false);
//        return baseMapper.selectList(wrapper);
//    }
//
//    @Override
//    public List<LoginData> getLoginDataByUserId(String userId) {
//        return baseMapper.getLoginDataByUserId(userId);
//    }
}
