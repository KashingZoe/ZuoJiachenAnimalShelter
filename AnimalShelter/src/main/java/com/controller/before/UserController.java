package com.controller.before;

import com.service.before.UserService;
import entity.Buser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    //注册添加数据
    @RequestMapping("/register")
    public String register(@ModelAttribute Buser buser, Model model, HttpSession session, String code){
        return userService.register(buser, model, session, code);
    }

    //登录验证
    @RequestMapping("/login")
    public String login(@ModelAttribute Buser buser, Model model, HttpSession session, String code){
        return userService.login(buser, model, session, code);
    }

    //退出
    @RequestMapping("/exit")
    public String exit (HttpSession session) {
        session.invalidate();
        return "forward:/before";
    }
}
