package com.xiaoshu.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.xiaoshu.admin.entity.Role;
import com.xiaoshu.admin.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Set;

public interface UserService extends IService<User> {

    /**
     * 更新用户的信誉度
     * @param user
     */
    void updateUserOnlyCredit(User user);

    /**
     * 通过当前id查询管理的农田主id
     * @param id
     * @return
     */
    String findFarmOwnManagerIdById(String id);

    User findUserByLoginName(String name);

    User findUserById(String id);

    int userCount(String loginName);

    void saveUserRoles(String id, Set<Role> roleLists);

    void saveUser(User user);

    void updateUser(User user);

    void deleteUser(User user);

    void lockUser(User user);

    List<User> findAllUser();

    User selectUserByTellOrEmail(@Param("tel")String tel, @Param("email")String email);
}
