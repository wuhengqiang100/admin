package com.xiaoshu.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xiaoshu.admin.entity.FarmData;
import com.xiaoshu.admin.mapper.FarmDataMapper;
import com.xiaoshu.admin.service.FarmDataService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 农田管理service实现层
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class FarmDataServiceImpl extends ServiceImpl<FarmDataMapper,FarmData> implements FarmDataService {
    @Override
    public List<FarmData> getFarmDataByFarmId(String farmId) {
        return baseMapper.getFarmDataByFarmId(farmId);
    }

//    /**
//     * 获得同一农田名字的数目
//     * @param name
//     * @return
//     */
//    @Override
//    public long getFarmDataNameCount(String name) {
//        QueryWrapper<FarmData> wrapper = new QueryWrapper<>();
//        wrapper.eq("name",name);
//        return baseMapper.selectCount(wrapper);
//    }
//
//    @Override
//    @Transactional(rollbackFor = Exception.class)
//    public FarmData saveFarmData(FarmData farmDataDataData) {
//        baseMapper.insert(farmDataDataData);
//        return farmDataDataData;
//    }
//
//
//    @Override
//    public FarmData getFarmDataById(String id) {
//        return baseMapper.selectFarmDataById(id);
//    }
//
//    @Override
//    @Transactional(rollbackFor = Exception.class)
//    public void updateFarmData(FarmData farmDataDataData) {
//        baseMapper.updateById(farmDataDataData);
//    }
//
//    @Override
//    @Transactional(rollbackFor = Exception.class)
//    public void deleteFarmData(FarmData farmDataDataData) {
//        farmDataDataData.setDelFlag(true);
//        baseMapper.updateById(farmDataDataData);
//
//    }
//
//    @Override
//    public List<FarmData> selectAll() {
//        QueryWrapper wrapper = new QueryWrapper();
////        wrapper.eq("del_flag",false);
//        return baseMapper.selectList(wrapper);
//    }
//
//    @Override
//    public List<FarmData> getFarmDataByUserId(String userId) {
//        return baseMapper.getFarmDataByUserId(userId);
//    }
}
