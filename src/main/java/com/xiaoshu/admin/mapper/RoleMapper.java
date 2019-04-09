package com.xiaoshu.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.xiaoshu.admin.entity.Menu;
import com.xiaoshu.admin.entity.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Set;

public interface RoleMapper extends BaseMapper<Role> {

    void saveRoleMenus(@Param("roleId") String roleId,  @Param("menus") Set<Menu> menuSet);

    Role selectRoleById(@Param("roleId") String roleId);

    void dropRoleMenus(@Param("roleId") String roleId);

    void dropRoleUsers(@Param("roleId") String roleId);

    List<Role> selectUserInRole(@Param("roleId") String roleId);

    /**
     * 根据角色id查需要的属性值
     * @param roleId
     * @return
     */
    Role findRoleProByRoleId(@Param("roleId") String roleId);

    /**
     * 登录界面的获取请求分页懒加载
     * @param page
     * @param size
     * @return
     */
    List<Role> loginPageRequest(@Param("page") int page,@Param("size") int size);

    /**
     * 登录界面的获取请求
     * @return
     */
    List<Role> loginPageRequestWithOutPage();
}