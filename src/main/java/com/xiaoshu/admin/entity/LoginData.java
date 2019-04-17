package com.xiaoshu.admin.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.xiaoshu.common.base.DataEntity;

/**
 * 用户信誉度实体类,用户登录后记录数据的实体
 */
@TableName("login_data")
public class LoginData extends DataEntity<LoginData> {

    private static final long serialVersionUID = 1L;
    /*@TableField("id")
    private Integer id;*/

    @TableField("unlogin")
    private int unlogin;//没有成功登录的次数

    @TableField("unauthorized_access")
    private int unauthorizedAccess;//越权访问的次数

    @TableField("repeated_refresh")
    private int repeatedRefresh;//重复刷新的次数

    @TableField("is_unsafe_logout")
    private Boolean isUnsafeLogout;//是否不安全退出

    @TableField("is_account")
    private Boolean isAccount;//是否已经计算


    @TableField("userId")
    private String userId;



    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @TableField(exist=false)
    private User user;

    public Boolean getAccount() {
        return isAccount;
    }

    public void setAccount(Boolean account) {
        isAccount = account;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public int getUnlogin() {
        return unlogin;
    }

    public void setUnlogin(int unlogin) {
        this.unlogin = unlogin;
    }

    public int getUnauthorizedAccess() {
        return unauthorizedAccess;
    }

    public void setUnauthorizedAccess(int unauthorizedAccess) {
        this.unauthorizedAccess = unauthorizedAccess;
    }

    public int getRepeatedRefresh() {
        return repeatedRefresh;
    }

    public void setRepeatedRefresh(int repeatedRefresh) {
        this.repeatedRefresh = repeatedRefresh;
    }

    public Boolean getUnsafeLogout() {
        return isUnsafeLogout;
    }

    public void setUnsafeLogout(Boolean unsafeLogout) {
        isUnsafeLogout = unsafeLogout;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
