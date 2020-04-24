package service.admin;

import dao.AdminUserDao;
import dao.BuserDao;
import entity.Buser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

@Service("adminUserService")
@Transactional
public class AdminUserServiceImpl implements AdminUserService{

    @Autowired
    private AdminUserDao adminUserDao;
    @Autowired
    private BuserDao buserDao;

    //后台查询所有用户
    @Override
    public String userInfo(Model model) {
        model.addAttribute("userList",adminUserDao.userInfo());
        return "admin/userlist";
    }
    //查询一个用户
    @Override
    public String selectAUser(Buser buser, Model model) {
        model.addAttribute("userList",adminUserDao.selectAUser(buser));
        return "admin/userlist";
    }

    @Override
    public String addUser(Buser buser, Model model) {
        int n= buserDao.insert(buser);
        if(n>0) {
            return "forward:/adminUser/userInfo";
        }else {
            model.addAttribute("msg", "fail to insert");
            return "forward:/adminUser/toAddUser";
        }
    }

    @Override
    public String toEditUser(Model model,Integer id) {
        Buser oneuser = adminUserDao.toEditUser(id);
        model.addAttribute("buser",oneuser);
        return "admin/useredit";
    }


    @Override
    public String editUser(Buser buser, Model model) {
        int n = adminUserDao.editUser(buser);
        if(n>0) {
            return "admin/index";
        }else {
            model.addAttribute("msg", "fail to update");
            return "forward:/adminUser/toEditUser";
        }

    }

    @Override
    public String selelctUser(Model model) {
        return null;
    }

    @Override
    public String deleteuserManager(Integer id, Model model) {
        return null;
    }
}
