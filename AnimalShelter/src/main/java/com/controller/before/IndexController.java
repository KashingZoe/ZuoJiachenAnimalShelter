package com.controller.before;

import com.service.before.IndexService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class IndexController {
    @Autowired
    private IndexService indexService;
    //打开主页
    @RequestMapping("/before")
    public String before(Model model, HttpSession session) {
        return indexService.before(model,session);
    }

    //register
    @RequestMapping("/toRegister")
    public String toRegister(Model model) {
        return indexService.toRegister(model);

    }
    //login
    @RequestMapping("/toLogin")
    public String toLogin(Model model) {
        return indexService.toLogin(model);

    }

}
