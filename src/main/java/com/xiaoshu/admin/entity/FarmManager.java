package com.xiaoshu.admin.entity;

import com.baomidou.mybatisplus.annotation.TableField;

import java.util.Set;

/**
 *
 */
public class FarmManager {

    @TableField(exist = false)
    private Set<User> userSet;
}
