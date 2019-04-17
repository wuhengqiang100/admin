package com.xiaoshu.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.xiaoshu.admin.entity.Credit;
import com.xiaoshu.admin.entity.LoginData;

import java.util.List;


/**
 * 信誉度计算service接口层
 */
public interface CreditService extends IService<Credit> {


    /**
     * 根据条件计算信誉度
     * @param loginDataList
     * @return
     */
    Credit calculateCredit(List<LoginData> loginDataList);

//    long getCreditNameCount(String name);
//
//    Credit saveCredit(Credit Credit);
//
//    Credit getCreditById(String id);
//
//    void updateCredit(Credit Credit);
//
//    void deleteCredit(Credit Credit);
//
//    List<Credit> selectAll();
//
//    List<Credit> getCreditByUserId(String userId);
}
