package com.xiaoshu.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xiaoshu.admin.entity.Credit;
import com.xiaoshu.admin.mapper.CreditMapper;
import com.xiaoshu.admin.service.CreditService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


/**
 * 信誉度计算service实现层
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class CreditServiceImpl extends ServiceImpl<CreditMapper,Credit> implements CreditService {

//    /**
//     * 获得同一农田名字的数目
//     * @param name
//     * @return
//     */
//    @Override
//    public long getCreditNameCount(String name) {
//        QueryWrapper<Credit> wrapper = new QueryWrapper<>();
//        wrapper.eq("name",name);
//        return baseMapper.selectCount(wrapper);
//    }
//
//    @Override
//    @Transactional(rollbackFor = Exception.class)
//    public Credit saveCredit(Credit Credit) {
//        baseMapper.insert(Credit);
//        return Credit;
//    }
//
//
//    @Override
//    public Credit getCreditById(String id) {
//        return baseMapper.selectCreditById(id);
//    }
//
//    @Override
//    @Transactional(rollbackFor = Exception.class)
//    public void updateCredit(Credit Credit) {
//        baseMapper.updateById(Credit);
//    }
//
//    @Override
//    @Transactional(rollbackFor = Exception.class)
//    public void deleteCredit(Credit Credit) {
//        Credit.setDelFlag(true);
//        baseMapper.updateById(Credit);
//
//    }
//
//    @Override
//    public List<Credit> selectAll() {
//        QueryWrapper wrapper = new QueryWrapper();
////        wrapper.eq("del_flag",false);
//        return baseMapper.selectList(wrapper);
//    }
//
//    @Override
//    public List<Credit> getCreditByUserId(String userId) {
//        return baseMapper.getCreditByUserId(userId);
//    }
}
