package com.xiaoshu.admin.entity;

import com.alibaba.fastjson.annotation.JSONField;
import com.baomidou.mybatisplus.annotation.FieldStrategy;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.xiaoshu.common.base.DataEntity;

import java.util.HashSet;
import java.util.Set;

@TableName("sys_user")
public class User extends DataEntity<User> {
    private static final long serialVersionUID = 1L;
    /**
     * 登录名
     */
    @TableField("login_name")
    private String loginName;

    /**
     * 昵称
     */
    @TableField(value = "nick_name",strategy= FieldStrategy.IGNORED)
    private String nickName;

    /**
     * 密码
     */
    private String password;

    /**
     * shiro加密盐
     */
    private String salt;

    /**
     * 手机号码
     */
    @TableField(strategy= FieldStrategy.IGNORED)
    private String tel;

    /**
     * 邮箱地址
     */
    @TableField("email")
    private String email;

    @TableField("identity")
    private String identity;

    @TableField("request_place")
    private String requestPlace;

    @TableField("age")
    private String age;

    @TableField("credit")
    private Double credit;
    /**
     * 农田主和农田温度\湿度\光照管理员的关系id
     */
    @TableField("own_manager_id")
    private String ownManagerId;
    /**
     * 账户是否锁定
     */
    private Boolean locked;

    /**
     * 账户是否后台用户
     */
    @TableField(value = "is_admin")
    private Boolean adminUser;

    public String getOwnManagerId() {
        return ownManagerId;
    }

    public void setOwnManagerId(String ownManagerId) {
        this.ownManagerId = ownManagerId;
    }

    @TableField(strategy= FieldStrategy.IGNORED)
    private String icon;

    @TableField(exist=false)
    private Set<Role> roleLists = new HashSet();

    @TableField(exist=false)
    private Set<Menu> menus = new HashSet();

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    @JSONField(serialize=false)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @JSONField(serialize=false)
    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Boolean getLocked() {
        return locked;
    }

    public void setLocked(Boolean locked) {
        this.locked = locked;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public Set<Role> getRoleLists() {
        return roleLists;
    }

    public void setRoleLists(Set<Role> roleLists) {
        this.roleLists = roleLists;
    }

    public Set<Menu> getMenus() {
        return menus;
    }

    public void setMenus(Set<Menu> menus) {
        this.menus = menus;
    }

    public Boolean getAdminUser() {
        return adminUser;
    }

    public void setAdminUser(Boolean adminUser) {
        this.adminUser = adminUser;
    }

    public String getIdentity() {
        return identity;
    }

    public void setIdentity(String identity) {
        this.identity = identity;
    }

    public String getRequestPlace() {
        return requestPlace;
    }

    public void setRequestPlace(String requestPlace) {
        this.requestPlace = requestPlace;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Double getCredit() {
        return credit;
    }

    public void setCredit(Double credit) {
        this.credit = credit;
    }
}
