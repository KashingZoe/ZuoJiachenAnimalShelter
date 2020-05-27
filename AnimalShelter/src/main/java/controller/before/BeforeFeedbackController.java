package controller.before;

import entity.Feedback;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import service.before.BeforeFeedbackService;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/beforeFeedback")
public class BeforeFeedbackController {

    @Autowired
    private BeforeFeedbackService beforeFeedbackService;

//    //查找所有的信息
//    @RequestMapping("/animalInfo")
//    public String animalInfo(@ModelAttribute Animal animal, Model model, Integer pageCur) {
//        return beforeAnimalService.animalInfo(model,pageCur);
//    }
//    //查询一条记录
//    @RequestMapping("/selectAAnimal")
//    public String selectAAnimal(@ModelAttribute Getanimal getanimal, HttpSession session,Model model, Integer id){
//        return  beforeAnimalService.selectAAnimal(model,session,id);
//    }
//    //打来add01
//    @RequestMapping("/toAddAnimal")
//    public String toAddAnimal(@ModelAttribute Animal animal){
//        return "before/add01";
//    }
//
//    //添加用户
//    @RequestMapping("/addAnimal")
//    public String addAnimal(@ModelAttribute Animal animal, HttpServletRequest request, Model model,HttpSession session){
//        return beforeAnimalService.addAnimal(animal,request,model,session);
//    }

    //打来
    @RequestMapping("/toAddFeedback")
    public String toAddFeedback(@ModelAttribute Feedback feedback){
        return "before/feedback";
    }

    //添加用户
    @RequestMapping("/addAfeedback")
    public String addFeedback(@ModelAttribute Feedback feedback, Model model, HttpSession session){
        return beforeFeedbackService.addFeedback(feedback,model,session);
    }




//
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
