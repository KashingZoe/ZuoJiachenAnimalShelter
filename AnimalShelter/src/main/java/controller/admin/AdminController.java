package controller.admin;

import entity.Auser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import service.admin.AdminService;

import javax.servlet.http.HttpSession;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    @RequestMapping("/admin")
    public String toLogin(@ModelAttribute Auser auser) {
        return "admin/login";
    }

    @RequestMapping("/admin/login")
    public String login(@ModelAttribute Auser auser, Model model, HttpSession session){
        return adminService.login(auser,model,session);
    }

    @RequestMapping("/admin/welcome")
    public String welcome() {
        return "admin/welcome";
    }

}
