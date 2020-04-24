package controller.admin;

import com.service.before.UserService;
import entity.Buser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import service.admin.AdminUserService;

@Controller
@RequestMapping("/adminUser")
public class AdminUserController {

    @Autowired
    private AdminUserService adminUserService;
    @Autowired
    private UserService userService;
    //查找所有的信息
    @RequestMapping("/userInfo")
    public String userInfo(@ModelAttribute Buser buser, Model model) {
        return adminUserService.userInfo(model);
    }
    //userlist查找用户
    @RequestMapping("/selectAUser")
    public String userAUser(@ModelAttribute Buser buser, Model model){
        return  adminUserService.selectAUser(buser, model);
    }
    //打来useradd.jsp
    @RequestMapping("/toAddUser")
    public String toAddUser(@ModelAttribute Buser buser){
        return "admin/useradd";
    }

    //添加用户
    @RequestMapping("/addUser")
    public String addUser(@ModelAttribute Buser buser, Model model){
        return adminUserService.addUser(buser,model);
    }


    //打来useredit.jsp
    @RequestMapping("/toEditUser")
    public String toEditUser(Model model, Integer id){
        return adminUserService.toEditUser(model, id);
    }

    @RequestMapping("/editUser")
    public String editUser(@ModelAttribute Buser buser, Model model){
        return adminUserService.editUser(buser, model);
    }














}
