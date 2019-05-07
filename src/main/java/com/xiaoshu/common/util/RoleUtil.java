package com.xiaoshu.common.util;

import com.xiaoshu.admin.entity.Role;
import com.xiaoshu.admin.entity.User;
import org.apache.commons.lang3.StringUtils;

/**
 * 令牌工具类
 */
public class RoleUtil{
    /**
     * 判断角色属性的数目
     * @param role
     * @return
     */
    public static Boolean threeRoleProperties(Role role){
        Boolean isTrue=true;
        int count=0;
        if (StringUtils.isNotEmpty(role.getIdentity())){
            count++;
        }if (StringUtils.isNotEmpty(role.getRequestPlace())){
            count++;
        }if (StringUtils.isNotEmpty(role.getTel())){
            count++;
        }if (StringUtils.isNotEmpty(role.getEmail())){
            count++;
        }if (StringUtils.isNotEmpty(role.getAge())){
            count++;
        }
        if (count>2){
            isTrue=true;
        }else{
            isTrue=false;
        }
        return isTrue;
    }

    /**
     * 属性至少存在Tell 或者 email中的一个
     * @param role
     * @return
     */
    public static Boolean existEmailOrTell(Role role){
        Boolean isTrue=false;
        int num=0;
        if (StringUtils.isNotBlank(role.getTel())){
            num=num+1;
        }
        if (StringUtils.isNotBlank(role.getEmail())){
            num=num+1;
        }
        if (num>=1 && num<3){
            isTrue=true;
        }
        return isTrue;
    }

    /**
     * 分配令牌时判断用户属性值是否符合
     * @param role
     * @param user
     * 返回true说明所有属性都满足,返回false说明有一条属性满足
     * @return
     */
    public static Boolean contrastRoleAndProperties(Role role,User user){
        Boolean finalResult=true;//最终返回结果
        Boolean identityTrue=true;
        Boolean rePlaceTrue=true;
        Boolean telTrue=true;
        Boolean emailTrue=true;
        Boolean ageTrue=true;
        if (StringUtils.isNotBlank(role.getIdentity())){
            String [] roleArry01=role.getIdentity().split(",");
            for (int i=0;i<roleArry01.length;i++){
                if (StringUtils.equals(roleArry01[i],user.getIdentity())){
                    identityTrue=true;
                    break;
                }else{
                    identityTrue=false;
                }
            }
            if (!identityTrue){
                return finalResult=false;
            }
        }
        if (StringUtils.isNotBlank(role.getRequestPlace())){
            String [] roleArry02=role.getRequestPlace().split(",");
            for (int i=0;i<roleArry02.length;i++){
                if (StringUtils.equals(roleArry02[i],user.getRequestPlace())){
                    rePlaceTrue=true;
                    break;
                }else{
                    rePlaceTrue=false;
                }
            }
            if (!rePlaceTrue){
                return finalResult=false;
            }
        } if (StringUtils.isNotBlank(role.getTel())){
            String [] roleArry03=role.getTel().split(",");
            for (int i=0;i<roleArry03.length;i++){
                if (StringUtils.equals(roleArry03[i],user.getTel())){
                    telTrue=true;
                    break;
                }else{
                    telTrue=false;
                }
            }
            if (!telTrue){
                return finalResult=false;
            }
        }
        if (StringUtils.isNotBlank(role.getEmail())){
            String [] roleArry04=role.getEmail().split(",");
            for (int i=0;i<roleArry04.length;i++){
                if (StringUtils.equals(roleArry04[i],user.getEmail())){
                    emailTrue=true;
                    break;
                }else{
                    emailTrue=false;
                }
            }
            if (!emailTrue){
                return finalResult=false;
            }
        } if (StringUtils.isNotBlank(role.getAge())){
            String [] roleArry05=role.getAge().split(",");
            for (int i=0;i<roleArry05.length;i++){
                if (StringUtils.equals(roleArry05[i],user.getAge())){
                    ageTrue=true;
                    break;
                }else{
                    ageTrue=false;
                }
            }
            if (!ageTrue){
                return finalResult=false;
            }
        }
        if (identityTrue && rePlaceTrue && telTrue && emailTrue && ageTrue){
            finalResult=true;

        }else{
            finalResult=false;
        }
        return finalResult;
    }

    /**
     * 简单加密属性值
     */
    public static Role checkPropertiesMd(Role role){
        if (StringUtils.isNotEmpty(role.getIdentity())){
            role.setIdentity("true");
        }if (StringUtils.isNotEmpty(role.getRequestPlace())){
            role.setRequestPlace("true");
        }if (StringUtils.isNotEmpty(role.getTel())){
            role.setTel("true");
        }if (StringUtils.isNotEmpty(role.getEmail())){
            role.setEmail("true");
        }if (StringUtils.isNotEmpty(role.getAge())){
            role.setAge("true");
        }
        return role;
    }

}
