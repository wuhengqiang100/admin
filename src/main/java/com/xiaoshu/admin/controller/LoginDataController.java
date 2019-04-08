package com.xiaoshu.admin.controller;


import com.xiaoshu.admin.entity.LoginData;
import com.xiaoshu.admin.service.LoginDataService;
import com.xiaoshu.common.annotation.SysLog;
import com.xiaoshu.common.util.ResponseEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * 用户登录后数据的操作controller层
 */
@Controller
@RequestMapping("admin/user/data")
public class LoginDataController {

    @Autowired
    LoginDataService loginDataService;

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


}
