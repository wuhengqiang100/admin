package com.xiaoshu.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.xiaoshu.admin.entity.FarmManager;

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
}
