package com.service.before;

import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;

public interface IndexService {
    public String before(Model model,HttpSession session);
    public String toRegister(Model model);
    public String toLogin(Model model);
}
