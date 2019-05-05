package com.xiaoshu.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xiaoshu.admin.entity.FarmManager;
import com.xiaoshu.admin.entity.FarmManagerCount;
import com.xiaoshu.admin.mapper.FarmManagerMapper;
import com.xiaoshu.admin.service.FarmManagerService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 农田管理service接口实现层
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class FarmManagerServiceImpl extends ServiceImpl<FarmManagerMapper, FarmManager> implements FarmManagerService{
    @Override
    public String findFarmOwnIdByCurrentId(String id) {
        return baseMapper.findFarmOwnIdByCurrentId(id);
    }

    @Override
    public FarmManager getFarmManagerById(String id) {
        return baseMapper.getFarmManagerById(id);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void deleteFarmManager(FarmManager farmManager) {
        baseMapper.deleteById(farmManager);
    }

    @Override
    public List<FarmManagerCount> getCountManager(String id) {
        return baseMapper.getCountManager(id);
    }

    @Override
    public List<FarmManager> getAllFarmManager() {
        return baseMapper.getAllFarmManager();
    }


}
