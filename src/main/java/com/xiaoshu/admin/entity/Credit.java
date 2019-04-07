package com.xiaoshu.admin.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.xiaoshu.common.base.DataEntity;

import java.util.Date;

/**
 * 用户信誉度实体类
 */
public class Credit extends DataEntity<Farm> {

    private static final long serialVersionUID = 1L;
    /*@TableField("id")
    private Integer id;*/

    @TableField("unlogin")
    private int unlogin;

    @TableField("unauthorized_access")
    private int unauthorizedAccess;

    @TableField("repeated_refresh")
    private int repeatedRefresh;

    @TableField("unsafe_logout")
    private int unsafeLogout;

    @TableField("is_account")
    private Boolean isAccount;



    @TableField("create_date")
    private Date createDate;

    @TableField("create_by")
    private String createId;

    @TableField("update_date")
    private Date updateDate;

    @TableField("update_by")
    private String updateId;

    @TableField("remarks")
    private String remarks;

    @TableField("del_flag")
    private Boolean delFlag;

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


    @Override
    public Date getCreateDate() {
        return createDate;
    }

    @Override
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    @Override
    public String getCreateId() {
        return createId;
    }

    @Override
    public void setCreateId(String createId) {
        this.createId = createId;
    }

    @Override
    public Date getUpdateDate() {
        return updateDate;
    }

    @Override
    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    @Override
    public String getUpdateId() {
        return updateId;
    }

    @Override
    public void setUpdateId(String updateId) {
        this.updateId = updateId;
    }

    @Override
    public String getRemarks() {
        return remarks;
    }

    @Override
    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    @Override
    public Boolean getDelFlag() {
        return delFlag;
    }

    @Override
    public void setDelFlag(Boolean delFlag) {
        this.delFlag = delFlag;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
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

    public int getUnsafeLogout() {
        return unsafeLogout;
    }

    public void setUnsafeLogout(int unsafeLogout) {
        this.unsafeLogout = unsafeLogout;
    }

    public Boolean getAccount() {
        return isAccount;
    }

    public void setAccount(Boolean account) {
        isAccount = account;
    }
}
