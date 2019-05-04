package com.xiaoshu.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xiaoshu.admin.entity.FarmManager;
import com.xiaoshu.admin.mapper.FarmManagerMapper;
import com.xiaoshu.admin.service.FarmManagerService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
}
