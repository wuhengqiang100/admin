package com.xiaoshu.admin.controller;


import com.xiaoshu.admin.entity.Credit;
import com.xiaoshu.admin.entity.LoginData;
import com.xiaoshu.admin.entity.User;
import com.xiaoshu.admin.entity.vo.LoginEchats;
import com.xiaoshu.admin.service.CreditService;
import com.xiaoshu.admin.service.LoginDataService;
import com.xiaoshu.admin.service.UserService;
import com.xiaoshu.common.annotation.SysLog;
import com.xiaoshu.common.config.MySysUser;
import com.xiaoshu.common.util.DateUtil;
import com.xiaoshu.common.util.ResponseEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

/**
 * 用户登录后数据的操作controller层
 */
@Controller
@RequestMapping("admin/user/data")
public class LoginDataController {

    @Autowired
    LoginDataService loginDataService;

    @Autowired
    CreditService creditService;

    @Autowired
    UserService userService;

//    @RequiresPermissions("LoginData:user:edit")
    @PostMapping("edit")
    @ResponseBody
    @SysLog("保存登录后的数据")
    public ResponseEntity edit(@RequestParam(value = "repeatedRefresh",required = false)String repeatedRefresh,
                               @RequestParam(value = "unlogin",required = false)String unlogin,
                               @RequestParam(value = "unauthorizedAccess",required = false)String unauthorizedAccess,
                               HttpSession session){
        LoginData loginData=new LoginData();
        if(repeatedRefresh!=null){
            loginData.setRepeatedRefresh(Integer.parseInt(repeatedRefresh));
        }
        if ( unlogin!=null){
            loginData.setUnlogin(Integer.parseInt(unlogin));
        }
        if(unauthorizedAccess!=null){
            loginData.setUnauthorizedAccess(Integer.parseInt(unauthorizedAccess));
        }

        String loginDataId= (String) session.getAttribute("loginDataId");
        loginData.setId(loginDataId);
        int count=loginDataService.updateLoginData(loginData);
        if(count>0){
            return ResponseEntity.success("操作成功");
        }else{
            return ResponseEntity.success("操作失败");
        }
    }

    @PostMapping("calculate")
    @ResponseBody
    @SysLog("计算信誉度")
    public ResponseEntity calculate(){
        String userId= MySysUser.id();
        List<LoginData> loginDataList=loginDataService.getLoginDataWthOutCount(userId);//根据用户id，获取前几次用户登录系统后的操作数据
        //更新之前计算过的数据的状态is_account=1
        if (0==loginDataList.size()){
            return ResponseEntity.failure("信誉度不用重新计算，没有登录数据");
        }
        loginDataList.forEach(loginData -> {
            loginDataService.updateLoginDataOnlyIsAccount(loginData);
        });
        Credit credit=creditService.calculateCredit(loginDataList);//计算出用户这段时间的用户信誉值
        credit.setCreateDate(new Date());
        credit.setUpdateDate(new Date());
        creditService.save(credit);//报错数据到user_credit表中


        User user= userService.findUserById(userId);
        user.setCredit(user.getCredit().subtract(credit.getResult()));
        userService.updateUserOnlyCredit(user);//更新用户的信誉度

        return ResponseEntity.success("信誉度更新成功");

    }

    @PostMapping("datacharts")
    @ResponseBody
    @SysLog("最近系统访问量统计")
    public ResponseEntity datacharts(){
        ResponseEntity responseEntity=new ResponseEntity();
        List<LoginEchats> loginEchatsList=loginDataService.getLoginDataEcharts();

        //取一周的数据
        String[] createDateArray=new String[7];
        int[] dataArray=new int[7];
        for (int i=0;i<loginEchatsList.size();i++){
            createDateArray[i]=DateUtil.getStringDateShort(loginEchatsList.get(i).getCreateDate());
            dataArray[i]=loginEchatsList.get(i).getCount();
        }
        responseEntity.setAny("dataDate",createDateArray);
        responseEntity.setAny("data",dataArray);
        responseEntity.setSuccess(true);
        return responseEntity;

    }
}
