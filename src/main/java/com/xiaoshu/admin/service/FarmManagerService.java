package com.xiaoshu.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.xiaoshu.admin.entity.FarmManager;
import com.xiaoshu.admin.entity.FarmManagerCount;

import java.util.List;

/**
 * 农田管理service接口层
 */
public interface FarmManagerService extends IService<FarmManager> {
    /**
     * 根据当前用户id,查找农田主id,判断当前人员是农田主还是农田管理员,有返回农田主id说明是农田管理员,没有说明当前用户是农田主
     * @param id
     * @return
     */
    String findFarmOwnIdByCurrentId(String id);

    /**
     * 根据农田管理员id获取农田管理员信息
     * @param id
     * @return
     */
    FarmManager getFarmManagerById(String id);

    /**
     * 删除农田管理员信息
     * @param farmManage
     */
    void deleteFarmManager(FarmManager farmManage);
    /**
     * 根据农田id获取管理员类型以及,管理员的数量
     * @param id
     * @return
     */
    List<FarmManagerCount> getCountManager(String id);

    /**
     * 获得所有的农田管理员数据
     * @return
     */
    List<FarmManager> getAllFarmManager();

/*
    *//**
     * 根据农田id获取湿度管理员的数量
     * @param id
     * @return
     *//*
    int getCountHumManager(String id);

    *//**
     * 根据农田id获取光照管理员的数量
     * @param id
     * @return
     *//*
    int getCountIlluManager(String id);*/
}
