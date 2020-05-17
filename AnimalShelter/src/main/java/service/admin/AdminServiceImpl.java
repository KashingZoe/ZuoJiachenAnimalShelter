package service.admin;

import dao.AdminDao;
import dao.AdminKindDao;
import entity.Auser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;
@Service  //IOC容器帮助创建对象
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminDao adminDao;

    @Autowired
    private AdminKindDao adminKindDao;


    @Override
    public String login(Auser auser, Model model, HttpSession session) {
        if(adminDao.login(auser) != null && adminDao.login(auser).size() > 0) {
            //将用户信息储存到auser中以便进行权限验证
            session.setAttribute("auser", auser);
            //将宠物类型储存到goodsType中以便在session中调用
            session.setAttribute("animalkinds", adminKindDao.kindInfo());
            return "admin/index";
        }
        model.addAttribute("msg", "登录信息错误");
        return "admin/login";
    }
}
