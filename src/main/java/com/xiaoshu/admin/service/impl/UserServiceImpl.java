package com.xiaoshu.admin.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.xiaoshu.admin.entity.Role;
import com.xiaoshu.admin.entity.User;
import com.xiaoshu.admin.mapper.UserMapper;
import com.xiaoshu.admin.service.UserService;
import com.xiaoshu.common.config.MySysUser;
import com.xiaoshu.common.util.Encodes;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Service
@Transactional(rollbackFor = Exception.class)
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {


    @Override
    public void updateUserOnlyCredit(User user)  {
        user.setUpdateId(MySysUser.id());
        baseMapper.updateUserOnlyCredit(user);
    }

    @Override
    public String findFarmOwnManagerIdById(String id) {
        return baseMapper.findFarmOwnManagerIdById(id);
    }

    @Override
    public User findUserByLoginName(String name) {
        Map<String,Object> map = new HashMap();
        map.put("loginName", name);
        return baseMapper.selectUserByMap(map);
    }

    @Override
    public User findUserById(String id) {
        Map<String,Object> map = new HashMap();
        map.put("id", id);
        return baseMapper.selectUserByMap(map);
    }

    @Override
    public int  userCount(String param) {
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        wrapper.eq("login_name",param).or().eq("email",param).or().eq("tel",param);
        int count = baseMapper.selectCount(wrapper);
        return count;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void saveUserRoles(String id, Set<Role> roleSet) {
        baseMapper.saveUserRoles(id,roleSet);
    }



    @Override
    @Transactional(rollbackFor = Exception.class)
    public void saveUser(User user) {
        Encodes.entryptPassword(user);
        user.setLocked(false);
        user.setCreateId(MySysUser.id());
        baseMapper.insert(user);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void updateUser(User user) {
        user.setUpdateId(MySysUser.id());
        dropUserRolesByUserId(user.getId());
        baseMapper.updateById(user);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void deleteUser(User user) {
        user.setDelFlag(true);
        user.updateById();
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void lockUser(User user) {
        user.setUpdateId(MySysUser.id());
        user.setLocked(!user.getLocked());
        user.updateById();
    }

    @Override
    public List<User> findAllUser() {
        return baseMapper.findAllUser();
    }

    @Override
    public User selectUserByTellOrEmail(String tell, String email) {
        return baseMapper.selectUserByTellOrEmail(tell,email);
    }

    @Override
    public List<User> getAllHaveManagerIdentityUser() {
        return baseMapper.getAllHaveManagerIdentityUser();
    }

    @Transactional(rollbackFor = Exception.class)
    public void dropUserRolesByUserId(String id) {
        baseMapper.dropUserRolesByUserId(id);
    }


}
