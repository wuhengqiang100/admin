package com.xiaoshu.admin.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.xiaoshu.admin.entity.Message;
import com.xiaoshu.admin.entity.Role;
import com.xiaoshu.admin.entity.User;
import com.xiaoshu.admin.mapper.MessageMapper;
import com.xiaoshu.admin.service.MessageService;
import com.xiaoshu.admin.service.RoleService;
import com.xiaoshu.admin.service.UploadService;
import com.xiaoshu.admin.service.UserService;
import com.xiaoshu.common.annotation.SysLog;
import com.xiaoshu.common.base.PageData;
import com.xiaoshu.common.config.MySysUser;
import com.xiaoshu.common.util.Constants;
import com.xiaoshu.common.util.Encodes;
import com.xiaoshu.common.util.ResponseEntity;
import com.xiaoshu.common.util.RoleUtil;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.web.session.HttpServletSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.util.WebUtils;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;
import java.util.stream.Collectors;

@Controller
@RequestMapping("admin/system/user")
public class UserController {

    @Autowired
    UserService userService;

    @Autowired
    RoleService roleService;

    @Autowired
    UploadService uploadService;

    @Autowired
    MessageService messageService;

    @Autowired
    MessageMapper messageMapper;

    @GetMapping("list")
    @SysLog("跳转系统用户列表页面")
    public String list(){
        return "admin/user/list";
    }

    @RequiresPermissions("sys:user:list")
    @PostMapping("list")
    @ResponseBody
    public PageData<User> list(@RequestParam(value = "page",defaultValue = "1")Integer page,
                               @RequestParam(value = "limit",defaultValue = "10")Integer limit,
                               ServletRequest request){
        Map map = WebUtils.getParametersStartingWith(request, "s_");
        PageData<User> userPageData = new PageData<>();
        QueryWrapper<User> userWrapper = new QueryWrapper<>();
        userWrapper.eq("del_flag",false);
        if(!map.isEmpty()){
            String type = (String) map.get("type");
            if(StringUtils.isNotBlank(type)) {
                userWrapper.eq("is_admin", "admin".equals(type) ? true : false);
            }
            String keys = (String) map.get("key");
            if(StringUtils.isNotBlank(keys)) {
                userWrapper.and(wrapper -> wrapper.like("login_name", keys).or().like("tel", keys).or().like("email", keys));
            }
        }
        IPage<User> userPage = userService.page(new Page<>(page,limit),userWrapper);
        userPageData.setCount(userPage.getTotal());
        userPageData.setData(userPage.getRecords());
        return userPageData;
    }

    @GetMapping("add")
    public String add(ModelMap modelMap){
        List<Role> roleList = roleService.selectAll();
        modelMap.put("roleList",roleList);
        return "admin/user/add";
    }

    @RequiresPermissions("sys:user:add")
    @PostMapping("add")
    @ResponseBody
    @SysLog("保存新增系统用户数据")
    public ResponseEntity add(@RequestBody  User user){
        if(StringUtils.isBlank(user.getLoginName())){
            return ResponseEntity.failure("登录名不能为空");
        }
        if(user.getRoleLists() == null || user.getRoleLists().size() == 0){
            return  ResponseEntity.failure("用户令牌至少选择一个");
        }
        if(userService.userCount(user.getLoginName())>0){
            return ResponseEntity.failure("登录名称已经存在");
        }
        if(StringUtils.isNotBlank(user.getEmail())){
            if(userService.userCount(user.getEmail())>0){
                return ResponseEntity.failure("该邮箱已被使用");
            }
        }
        if(StringUtils.isNoneBlank(user.getTel())){
            if(userService.userCount(user.getTel())>0){
                return ResponseEntity.failure("该手机号已被绑定");
            }
        }
        user.setPassword(Constants.DEFAULT_PASSWORD);
        userService.saveUser(user);
        if(StringUtils.isBlank(user.getId())){
            return ResponseEntity.failure("保存用户信息出错");
        }
//        Set<Role> roleSet=user.getRoleLists();
        Boolean allContrast=true;
        Set<Role> roleSetFrom=user.getRoleLists();
        for (Role roleS:roleSetFrom){
            Role role=roleService.getRoleById(roleS.getId());
            allContrast=RoleUtil.contrastRoleAndProperties(role,user);
            if (!allContrast){
                return ResponseEntity.failure("该用户属性不满足"+role.getName()+"令牌的属性值,请确认后再分配令牌!");
            }
        }
        //保存用户角色关系
        userService.saveUserRoles(user.getId(),user.getRoleLists());
        return ResponseEntity.success("操作成功");
    }

    @GetMapping("edit")
    public String edit(String id,ModelMap modelMap){
        User user = userService.findUserById(id);
        String roleIds = "";
        if(user != null) {
            roleIds = user.getRoleLists().stream().map(role -> role.getId()).collect(Collectors.joining(","));
        }
        List<Role> roleList = roleService.selectAll();
        modelMap.put("localuser",user);
        modelMap.put("roleIds",roleIds);
        modelMap.put("roleList",roleList);
        return "admin/user/edit";
    }

    @RequiresPermissions("sys:user:edit")
    @PostMapping("edit")
    @ResponseBody
    @SysLog("保存系统用户编辑数据")
    public ResponseEntity edit(@RequestBody  User user){
        if(StringUtils.isBlank(user.getId())){
            return ResponseEntity.failure("用户ID不能为空");
        }
        if(StringUtils.isBlank(user.getLoginName())){
            return ResponseEntity.failure("登录名不能为空");
        }
        if(user.getRoleLists() == null || user.getRoleLists().size() == 0){
            return  ResponseEntity.failure("用户角色至少选择一个");
        }
        User oldUser = userService.findUserById(user.getId());
        if(StringUtils.isNotBlank(user.getEmail())){
            if(!user.getEmail().equals(oldUser.getEmail())){
                if(userService.userCount(user.getEmail())>0){
                    return ResponseEntity.failure("该邮箱已被使用");
                }
            }
        }

        if(StringUtils.isNotBlank(user.getLoginName())){
            if(!user.getLoginName().equals(oldUser.getLoginName())) {
                if (userService.userCount(user.getLoginName()) > 0) {
                    return ResponseEntity.failure("该登录名已存在");
                }
            }
        }
        if(StringUtils.isNotBlank(user.getTel())){
            if(!user.getTel().equals(oldUser.getTel())) {
                if (userService.userCount(user.getTel()) > 0) {
                    return ResponseEntity.failure("该手机号已经被绑定");
                }
            }
        }
//        Set<Role> roleSet=user.getRoleLists();
        Boolean allContrast=true;
        Set<Role> roleSetFrom=user.getRoleLists();
        for (Role roleS:roleSetFrom){
            Role role=roleService.getRoleById(roleS.getId());
            allContrast=RoleUtil.contrastRoleAndProperties(role,user);
            if (!allContrast){
                return ResponseEntity.failure("该用户属性不满足"+role.getName()+"令牌的属性值,请确认后再分配令牌!");
            }
        }

        user.setIcon(oldUser.getIcon());
        userService.updateUser(user);

        if(StringUtils.isBlank(user.getId())){
            return ResponseEntity.failure("保存用户信息出错");
        }
        userService.saveUserRoles(user.getId(),user.getRoleLists());
        return ResponseEntity.success("操作成功");
    }

    @RequiresPermissions("sys:user:lock")
    @PostMapping("lock")
    @ResponseBody
    @SysLog("锁定或开启系统用户")
    public ResponseEntity lock(@RequestParam(value = "id",required = false)String id){
        if(StringUtils.isBlank(id)){
            return ResponseEntity.failure("参数错误");
        }
        User user = userService.getById(id);
        if(user == null){
            return ResponseEntity.failure("用户不存在");
        }
        userService.lockUser(user);
        return ResponseEntity.success("操作成功");
    }

    @RequiresPermissions("sys:user:delete")
    @PostMapping("delete")
    @ResponseBody
    @SysLog("删除系统用户数据(单个)")
    public ResponseEntity delete(@RequestParam(value = "id",required = false)String id){
        if(StringUtils.isBlank(id)){
            return ResponseEntity.failure("参数错误");
        }
        User user = userService.getById(id);
        if(user == null){
            return ResponseEntity.failure("用户不存在");
        }/*else if(user.getAdminUser()) {
            return ResponseEntity.failure("不能删除后台用户");
        }*//*else if(user.getAdminUser()) {
            return ResponseEntity.failure("不能删除后台用户");
        }*/
        userService.deleteUser(user);
        return ResponseEntity.success("操作成功");
    }

    @RequiresPermissions("sys:user:delete")
    @PostMapping("deleteSome")
    @ResponseBody
    @SysLog("删除系统用户数据(多个)")
    public ResponseEntity deleteSome(@RequestBody List<User> users){
        if(users == null || users.size()==0){
            return ResponseEntity.failure("请选择需要删除的用户");
        }
        for (User u : users){
                userService.deleteUser(u);
        }
        return ResponseEntity.success("操作成功");
    }

    @GetMapping("userinfo")
    public String toEditMyInfo(ModelMap modelMap){
        String userId = MySysUser.id();
        User user = userService.findUserById(userId);
        modelMap.put("userinfo",user);
        modelMap.put("userRole",user.getRoleLists());
        return "admin/user/userInfo";
    }

    @SysLog("系统用户个人信息修改")
    @PostMapping("saveUserinfo")
    @ResponseBody
    public ResponseEntity saveUserInfo(User user){
        if(StringUtils.isBlank(user.getId())){
            return ResponseEntity.failure("用户ID不能为空");
        }
        if(StringUtils.isBlank(user.getLoginName())){
            return ResponseEntity.failure("登录名不能为空");
        }
 /*       User oldUser = userService.findUserById(user.getId());
        if(StringUtils.isNotBlank(user.getEmail())){
            if(!user.getEmail().equals(oldUser.getEmail())){
                if(userService.userCount(user.getEmail())>0){
                    return ResponseEntity.failure("该邮箱已被使用");
                }
            }
        }
        if(StringUtils.isNotBlank(user.getTel())){
            if(!user.getTel().equals(oldUser.getTel())) {
                if (userService.userCount(user.getTel()) > 0) {
                    return ResponseEntity.failure("该手机号已经被绑定");
                }
            }
        }*/
        userService.updateById(user);
        return ResponseEntity.success("操作成功");
    }

    @GetMapping("changePassword")
    public String changePassword(ModelMap modelMap){
        modelMap.put("currentUser",userService.getById(MySysUser.id()));
        return "admin/user/changePassword";
    }

    @GetMapping("changeProperties")
    public String changeProperties(ModelMap modelMap){
        modelMap.put("currentUser",userService.getById(MySysUser.id()));
        return "admin/user/changeProperties";
    }

    @SysLog("用户修改属性之发送消息")
    @PostMapping("changeProperties")
    @ResponseBody
    public ResponseEntity changeProperties(){
        User rootUser=userService.findUserByLoginName("java");
        String fromUserId = MySysUser.id();
        User messageUser=userService.getById(fromUserId);
        Message message=new Message();
        message.setTitle("申请修改属性值");
        message.setContent(messageUser.getNickName()+"申请修改属性值");
        message.setMessageType("属性更改");
        message.setCreateId(fromUserId);
        message.setCreateName(messageUser.getNickName());
        message.setCreateDate(new Date());
        message.setUpdateId(fromUserId);
        message.setUpdateDate(new Date());
        message.setToUser(rootUser.getId());
        if (StringUtils.isBlank(message.getTitle())){
            return ResponseEntity.failure("标题不能为空!");
        }
        messageService.saveMessage(message);
        return ResponseEntity.success("消息发送成功");
    }


    @SysLog("用户修改密码")
    @PostMapping("changePassword")
    @ResponseBody
    public ResponseEntity changePassword(@RequestParam(value = "oldPwd",required = false)String oldPwd,
                                       @RequestParam(value = "newPwd",required = false)String newPwd,
                                       @RequestParam(value = "confirmPwd",required = false)String confirmPwd){
        if(StringUtils.isBlank(oldPwd)){
            return ResponseEntity.failure("旧密码不能为空");
        }
        if(StringUtils.isBlank(newPwd)){
            return ResponseEntity.failure("新密码不能为空");
        }
        if(StringUtils.isBlank(confirmPwd)){
            return ResponseEntity.failure("确认密码不能为空");
        }
        if(!confirmPwd.equals(newPwd)){
            return ResponseEntity.failure("确认密码与新密码不一致");
        }
        User user = userService.findUserById(MySysUser.id());

        byte[] hashPassword = Encodes.sha1(oldPwd.getBytes(), Encodes.SHA1, Encodes.decodeHex(user.getSalt()), Constants.HASH_INTERATIONS);
        String password = Encodes.encodeHex(hashPassword);

        if(!user.getPassword().equals(password)){
            return ResponseEntity.failure("旧密码错误");
        }
        user.setPassword(newPwd);
        Encodes.entryptPassword(user);
        userService.updateById(user);
        return ResponseEntity.success("操作成功");
    }

    @SysLog("上传头像")
    @PostMapping("uploadFace")
    @ResponseBody
    public ResponseEntity uploadFile(@RequestParam("icon") MultipartFile file, HttpServletRequest httpServletRequest) {
        if(file == null){
            return ResponseEntity.failure("上传文件为空 ");
        }
        String url = null;
        Map map = new HashMap();
        try {
            url = uploadService.upload(file);
            map.put("url", url);
            map.put("name", file.getOriginalFilename());
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.failure(e.getMessage());
        }
        return ResponseEntity.success("操作成功").setAny("data",map);
    }

}
