package controller.admin;

import com.service.before.UserService;
import entity.Animal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import service.admin.AdminAnimalService;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/adminAnimal")
public class AdminAnimalController {

    @Autowired
    private AdminAnimalService adminAnimalService;
    @Autowired
    private UserService userService;
    //查找所有的信息
    @RequestMapping("/animalInfo")
    public String animalInfo(@ModelAttribute Animal animal, Model model, Integer pageCur) {
        return adminAnimalService.animalInfo(model,pageCur);
    }
//    //userlist查找用户
//    @RequestMapping("/selectAUser")
//    public String userAUser(@ModelAttribute Buser buser, Model model, Integer pageCur){
//        return  adminUserService.selectAUser(buser, model, pageCur);
//    }
    //打来animaladd.jsp
    @RequestMapping("/toAddAnimal")
    public String toAddAnimal(@ModelAttribute Animal animal){
        return "admin/animaladd";
    }

    //添加用户
    @RequestMapping("/addAnimal")
    public String addAnimal(@ModelAttribute Animal animal, HttpServletRequest request, Model model){
        return adminAnimalService.addAnimal(animal,request,model);
    }
//
//
    //打来useredit.jsp
    @RequestMapping("/toEditAnimal")
    public String toEditAnimal(Model model, Integer id){
        return adminAnimalService.toEditAnimal(model, id);
    }
//
    @RequestMapping("/editAnimal")
    public String editAnimal(@ModelAttribute Animal animal, Model model){
        return adminAnimalService.editAnimal(animal, model);
    }
//
//    @RequestMapping("/toDeleteUser")
//    public String toDeleteUser(@ModelAttribute Buser buser, Model model, Integer pageCur){
//        return adminUserService.toDeleteUser(model, pageCur);
//    }
//
//    @RequestMapping("/deleteAUser")
//    public String deleteAUser(Integer id, Model model){
//        return adminUserService.deleteAUser(id, model);
//    }
//
//    @RequestMapping("/delSelectAUser")
//    public String delSelectAUser(@ModelAttribute Buser buser, Model model, Integer pageCur){
//        return adminUserService.delSelectAUser(buser, model, pageCur);
//    }












}
