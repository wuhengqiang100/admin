package com.xiaoshu.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xiaoshu.admin.entity.FarmArea02;
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
    public List<FarmData> getFarmDataByFarmId(int farmId) {
        return baseMapper.getFarmDataByFarmId(farmId);
    }

    @Override
    public FarmData getMostNewFarmData(int farmId) {
        return baseMapper.getMostNewFarmData(farmId);
    }

    @Override
    public List<FarmData> getFarmDataDetail(FarmArea02 farmArea02) {
        return baseMapper.getFarmDataDetail(farmArea02);
    }

    @Override
    public FarmArea02 getFarmAreaByFarmArea(FarmArea02 farmArea02) {
        return baseMapper.getFarmAreaByFarmArea(farmArea02);
    }


}
