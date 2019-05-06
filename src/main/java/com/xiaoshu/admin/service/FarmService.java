package com.xiaoshu.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.xiaoshu.admin.entity.Farm;

import java.util.List;

/**
 * 农田service接口层
 */
public interface FarmService extends IService<Farm> {

    long getFarmNameCount(String name);

    Farm saveFarm(Farm farm);

    Farm getFarmById(int id);

    void updateFarm(Farm farm);

    void deleteFarm(Farm farm);

    List<Farm> selectAll();

    List<Farm> getFarmByUserId(String userId);
}
