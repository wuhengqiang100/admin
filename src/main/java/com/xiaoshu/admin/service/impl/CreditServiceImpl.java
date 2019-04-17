package com.xiaoshu.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xiaoshu.admin.entity.Credit;
import com.xiaoshu.admin.entity.LoginData;
import com.xiaoshu.admin.mapper.CreditMapper;
import com.xiaoshu.admin.service.CreditService;
import com.xiaoshu.common.config.MySysUser;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


/**
 * 信誉度计算service实现层
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class CreditServiceImpl extends ServiceImpl<CreditMapper,Credit> implements CreditService {
    //计算信誉度并返回最终信誉度值
    @Override
    public Credit calculateCredit(List<LoginData> loginDataList) {
        Credit credit=new Credit();
        int countLength=loginDataList.size();//计数有多少条数据
        final int[] countUnLogin = {0};//计数有多少次登录失败的情况
        final int[] countUnauthorizedAccess = {0};//计数有多少次越权访问
        final int[] countUnSafeLogOut={0};//未安全退出次数
        final int[] countRepeatedRefresh={0};//重复刷新次数
        loginDataList.forEach( loginDataCount -> {
            countUnLogin[0] = countUnLogin[0] +loginDataCount.getUnlogin();
            countUnauthorizedAccess[0] = countUnauthorizedAccess[0] +loginDataCount.getUnauthorizedAccess();
            if (!loginDataCount.getUnsafeLogout()){//没有安全退出，计数器+1
                countUnSafeLogOut[0] = countUnSafeLogOut[0] +1;
            }
            countRepeatedRefresh[0] = countRepeatedRefresh[0] + loginDataCount.getRepeatedRefresh();
        });
        credit.setAccount(true);//已经计算的数据
        credit.setUserId(MySysUser.id());
        credit.setCreateId(MySysUser.id());
        credit.setUpdateId(MySysUser.id());
        credit.setUnsafeLogout(countUnSafeLogOut[0]);//非安全退出
        credit.setUnauthorizedAccess(countUnauthorizedAccess[0]);//越权访问次数
        credit.setRepeatedRefresh(countRepeatedRefresh[0]);//重复刷新次数
        credit.setUnlogin(countUnLogin[0]);//未成功登录次数
        credit.setAccountLogin(countLength);//数据量，多少条
        Double accountResult=0.0;

        if ((countUnSafeLogOut[0]/countLength)>0.9){
            accountResult=accountResult+0.05;
        }
        if ((countUnauthorizedAccess[0]/countLength)>0){
            accountResult=accountResult+0.5;//不允许越权发生
        }
        if((countRepeatedRefresh[0]/countLength)>10){
            accountResult=accountResult+0.05;//平均每次重复刷新超过三次，信誉度-0.1
        }
        if ((countUnLogin[0]/countLength)>3){
            accountResult=accountResult+0.1;//用户平均每次失败登录为3次，信誉度-0.1
        }
        credit.setResult(accountResult);//计算出应该减的信誉度
        return credit;
    }

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
