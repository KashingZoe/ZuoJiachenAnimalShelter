package com.controller.before;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
    @RequestMapping("/admin")
    public String toLogin() {

        return "before/login";
    }
}
