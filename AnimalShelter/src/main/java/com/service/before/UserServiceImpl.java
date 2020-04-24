package com.service.before;

import dao.BuserDao;
import entity.Buser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{
    @Autowired
    private BuserDao buserDao;
    public String register() {
        return null;

    }
    //注册
    public String register(Buser buser, Model model, HttpSession session, String code) {
//        if(!code.equalsIgnoreCase(session.getAttribute("code").toString())) {
//            model.addAttribute("codeError","codeError");
//            return "before/userreg";
//        }
        int n= buserDao.insert(buser);
        if(n>0) {
            return"before/userlogin";
        }else {
            model.addAttribute("msg", "fail to register");
            return"before/userreg";
        }
    }
    //登录
    public String login(Buser buser, Model model, HttpSession session, String code) {
        if(!code.equalsIgnoreCase(session.getAttribute("code").toString())) {
            model.addAttribute("msg", "codeError");
            return "before/login";
        }
        Buser ruser= null;
        List<Buser> list=null;
//                buserDao.login(buser);
        if(list.size()>0) {
            ruser=list.get(0);
        }
        if(ruser !=null) {
            session.setAttribute("bruser", ruser);
            return"forward:/before";
        }else {
            model.addAttribute("msg", "ERROR Incorrect username or password");
            return"before/login";

        }

    }

}
