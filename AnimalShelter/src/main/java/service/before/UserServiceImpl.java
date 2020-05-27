package service.before;

import dao.AdminKindDao;
import dao.BeforeUserDao;
import entity.Animalkind;
import entity.Buser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private BeforeUserDao beforeUserDao;
    @Autowired
    private AdminKindDao adminKindDao;



    //注册
    public String register(Buser buser, Model model, HttpSession session, String code) {
//        if(!code.equalsIgnoreCase(session.getAttribute("code").toString())) {
//            model.addAttribute("codeError","codeError");
//            return "before/userreg";
//        }
        int n= beforeUserDao.register(buser);
        if(n>0) {
            return"before/userlogin";
        }else {
            model.addAttribute("msg", "fail to register");
            return"before/userreg";
        }
    }
    //登录
    public String login(Buser buser, Model model, HttpSession session, String code) {
//        if(!code.equalsIgnoreCase(session.getAttribute("code").toString())) {
//            model.addAttribute("msg", "codeError");
//            return "before/login";
//        }
        Buser ruser = null;
        List<Buser> list=beforeUserDao.login(buser);
        List<Animalkind> kind = adminKindDao.kindInfo();
        if(list.size()>0) {
            ruser=list.get(0);
        }
        if(ruser !=null) {
            session.setAttribute("kind", kind);
            session.setAttribute("bruser", ruser);
            System.out.println(ruser);
            return"forward:/before";
        }else {
            model.addAttribute("msg", "ERROR Incorrect username or password");
            return"before/login";

        }

    }

}
