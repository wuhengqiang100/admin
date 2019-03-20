package com.xiaoshu.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.xiaoshu.admin.entity.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RoleService extends IService<Role> {

    long getRoleNameCount(String name);

    Role saveRole(Role role);

    Role getRoleById(String id);

    void updateRole(Role role);

    void deleteRole(Role role);

    List<Role> selectAll();

    List<Role> selectUserInRole(String id);

    /**
     * 根据角色id查需要的属性值
     * @param roleId
     * @return
     */
    Role findRoleProByRoleId(String roleId);
}
