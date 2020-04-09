package com.service.before;


import entity.Buser;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;

@Service("indexService")
@Transactional
public class IndexServiceImpl implements IndexService {

//    @Autowired
//    private BuserDao buserDao;
    //打开主页
    public String before(Model model, HttpSession session){
        return "before/index";
    }

    //注册
    public String toRegister(Model model){
        model.addAttribute("rbuser", new Buser());
        return "before/userreg";
    }

    //登录
    public String toLogin(Model model){
        model.addAttribute("lbuser", new Buser());
        return "before/userlogin";
    }

}
