package controller.before;

import entity.Getanimal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import service.before.BeforeAnimalService;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/beforeAnimal")
public class BeforeAnimalController {

    @Autowired
    private BeforeAnimalService beforeAnimalService;

//    //查找所有的信息
//    @RequestMapping("/animalInfo")
//    public String animalInfo(@ModelAttribute Animal animal, Model model, Integer pageCur) {
//        return adminAnimalService.animalInfo(model,pageCur);
//    }
    //查询一条记录
    @RequestMapping("/selectAAnimal")
    public String selectAAnimal(@ModelAttribute Getanimal getanimal, HttpSession session,Model model, Integer id){
        return  beforeAnimalService.selectAAnimal(model,session,id);
    }
//    //打来animaladd.jsp
//    @RequestMapping("/toAddAnimal")
//    public String toAddAnimal(@ModelAttribute Animal animal){
//        return "admin/animaladd";
//    }
//
//    //添加用户
//    @RequestMapping("/addAnimal")
//    public String addAnimal(@ModelAttribute Animal animal, HttpServletRequest request, Model model){
//        return adminAnimalService.addAnimal(animal,request,model);
//    }
////
////
//    //打来useredit.jsp
//    @RequestMapping("/toEditAnimal")
//    public String toEditAnimal(Model model, Integer id){
//        return adminAnimalService.toEditAnimal(model, id);
//    }
////
//    @RequestMapping("/editAnimal")
//    public String editAnimal(@ModelAttribute Animal animal, Model model){
//        return adminAnimalService.editAnimal(animal, model);
//    }
////
//    @RequestMapping("/toDeleteAnimal")
//    public String toDeleteAnimal(@ModelAttribute Animal animal, Model model, Integer pageCur){
//        return adminAnimalService.toDeleteAnimal(model, pageCur);
//    }
//
//    @RequestMapping("/deleteAAnimal")
//    public String deleteAAnimal(Integer id, Model model){
//        return adminAnimalService.deleteAAnimal(id, model);
//    }
////
//    @RequestMapping("/delSelectAAnimal")
//    public String delSelectAAnimal(@ModelAttribute Animal animal, Model model, Integer pageCur){
//        return adminAnimalService.delSelectAAnimal(animal, model, pageCur);
//    }












}
