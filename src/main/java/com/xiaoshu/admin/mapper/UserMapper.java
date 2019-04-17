package com.xiaoshu.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.xiaoshu.admin.entity.Role;
import com.xiaoshu.admin.entity.User;
import com.xiaoshu.admin.entity.UserRegist;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;
import java.util.Set;


public interface UserMapper extends BaseMapper<User> {


    /**
     * 更新用户的信誉度
     * @param user
     */
    void updateUserOnlyCredit(User user);

    User selectUserByUser(User user);

    User selectUserByMap(Map<String,Object> map);

    void saveUserRoles(@Param("userId")String id, @Param("roleIds")Set<Role> roles);

    void dropUserRolesByUserId(@Param("userId")String id);

    void insertUserRegist(UserRegist user);

    List<User> findAllUser();

    User selectUserByTellOrEmail(@Param("tel")String tel, @Param("email")String email);

    /**
     * 通过当前id查询管理的农田主id
     * @param id
     * @return
     */
    String findFarmOwnManagerIdById(String id);
}