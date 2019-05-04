package com.xiaoshu.admin.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.xiaoshu.common.base.DataEntity2;

import java.util.Date;
import java.util.List;

/**
 * 农田管理员实体类
 */
//农田主与农田数据管理员为一对多关系,一个农田主可以有多个农田数据管理员,一个农田数据管理员输入一个农田主
@TableName("farm_own_manager")
public class FarmManager extends DataEntity2<FarmManager> {

    private static final long serialVersionUID = 1L;


    //农田主id
    @TableField("farm_own_id")
    private String farmOwnId;
    //农田管理员id
    @TableField("farm_manager_id")
    private String farmManagerId;
    @TableField("farm_own_nick_name")
    private String farmOwnNickName;
    @TableField("farm_manager_nick_name")
    private String farmManagerNickName;

    @TableField("farm_manager_type")
    private String farmManagerType;
    @TableField("update_date")
    private Date updateDate;


    @TableField(exist = false)
    private User farmOwnUser;//农田主实体

    @TableField(exist = false)
    private List<User> farmManagerUserList;//农田数据管理员实体

    public String getFarmOwnId() {
        return farmOwnId;
    }

    public void setFarmOwnId(String farmOwnId) {
        this.farmOwnId = farmOwnId;
    }

    public String getFarmManagerId() {
        return farmManagerId;
    }

    public void setFarmManagerId(String farmManagerId) {
        this.farmManagerId = farmManagerId;
    }

    public User getFarmOwnUser() {
        return farmOwnUser;
    }

    public void setFarmOwnUser(User farmOwnUser) {
        this.farmOwnUser = farmOwnUser;
    }

    public List<User> getFarmManagerUserList() {
        return farmManagerUserList;
    }

    public void setFarmManagerUserList(List<User> farmManagerUserList) {
        this.farmManagerUserList = farmManagerUserList;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getFarmOwnNickName() {
        return farmOwnNickName;
    }

    public void setFarmOwnNickName(String farmOwnNickName) {
        this.farmOwnNickName = farmOwnNickName;
    }

    public String getFarmManagerNickName() {
        return farmManagerNickName;
    }

    public void setFarmManagerNickName(String farmManagerNickName) {
        this.farmManagerNickName = farmManagerNickName;
    }

    public String getFarmManagerType() {
        return farmManagerType;
    }

    public void setFarmManagerType(String farmManagerType) {
        this.farmManagerType = farmManagerType;
    }
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}
