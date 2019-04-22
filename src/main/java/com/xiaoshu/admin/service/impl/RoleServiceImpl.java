package com.xiaoshu.admin.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xiaoshu.admin.entity.Role;
import com.xiaoshu.admin.mapper.RoleMapper;
import com.xiaoshu.admin.service.RoleService;
import com.xiaoshu.common.config.MySysUser;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional(rollbackFor = Exception.class)
public class RoleServiceImpl extends ServiceImpl<RoleMapper,Role> implements RoleService {

    @Override
    public long getRoleNameCount(String name) {
        QueryWrapper<Role> wrapper = new QueryWrapper<>();
        wrapper.eq("name",name);
        return baseMapper.selectCount(wrapper);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Role saveRole(Role role) {
        role.setUpdateId(MySysUser.id());
        baseMapper.insert(role);
        if(role.getMenuSet() != null && role.getMenuSet().size() > 0) {
            baseMapper.saveRoleMenus(role.getId(),role.getMenuSet());
        }
        return role;
    }

    @Override
    public Role getRoleById(String id) {
        return baseMapper.selectRoleById(id);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void updateRole(Role role) {
        role.setUpdateId(MySysUser.id());
        baseMapper.updateById(role);
        baseMapper.dropRoleMenus(role.getId());
        if(role.getMenuSet() != null && role.getMenuSet().size() > 0) {
            baseMapper.saveRoleMenus(role.getId(), role.getMenuSet());
        }
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void deleteRole(Role role) {
        role.setDelFlag(true);
        role.setUpdateId(MySysUser.id());
        baseMapper.updateById(role);
        baseMapper.dropRoleMenus(role.getId());
        baseMapper.dropRoleUsers(role.getId());
    }

    @Override
    public List<Role> selectAll() {
        QueryWrapper wrapper = new QueryWrapper();
        wrapper.eq("del_flag",false);
        return baseMapper.selectList(wrapper);
    }

    @Override
    public List<Role> selectUserInRole(String id) {
        return baseMapper.selectUserInRole(id);
    }

    @Override
    public Role findRoleProByRoleId(String roleId) {
        return baseMapper.findRoleProByRoleId(roleId);
    }

    @Override
    public List<Role> loginPageRequest(int page, int size) {
        if (0==page){
            return baseMapper.loginPageRequest(page*size,size);
        }else {
            return baseMapper.loginPageRequest(page*size-1,size);
        }

    }

    @Override
    public List<Role> loginPageRequestWithOutPage() {
        return baseMapper.loginPageRequestWithOutPage();
    }

}
