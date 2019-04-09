package com.xiaoshu.common.util;

import com.xiaoshu.admin.entity.User;
import org.apache.commons.lang3.StringUtils;

/**
 * 用户工具类
 */
public class UserUtil {


    /**
     * 属性至少存在Tell 或者 email中的一个
     * @param user
     * @return
     */
    public static Boolean userCoverEmailOrTell(User user){
        Boolean isTrue=false;
        int num=0;
        if (StringUtils.isNotBlank(user.getTel())){
            num=num+1;
        }
        if (StringUtils.isNotBlank(user.getEmail())){
            num=num+1;
        }
        if (num>=1 && num<3){
            isTrue=true;
        }else{
            isTrue=false;
        }
        return isTrue;
    }


}
