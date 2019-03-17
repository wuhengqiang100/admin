package com.xiaoshu.admin.controller;

import com.xiaoshu.admin.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 农田数据管理
 */
@Controller
@RequestMapping("/farm/farmdata")
public class FarmDataController {

    @Autowired
    MessageService messageService;

    @GetMapping(value = "list")
    public String list(){
        return "admin/farmdata/list";
    }

    @GetMapping(value = "list")
    public ModelMap index(ModelMap modelMap) {

    return modelMap;
    }
}
