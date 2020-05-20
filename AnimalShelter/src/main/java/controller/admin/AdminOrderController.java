package controller.admin;

import entity.Buser;
import entity.Getanimal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import service.admin.AdminOrderService;

@Controller
@RequestMapping("/adminOrder")
public class AdminOrderController {

    @Autowired
    private AdminOrderService adminOrderService;
  
    //查找所有的信息
    @RequestMapping("/orderInfo")
    public String orderInfo(@ModelAttribute Getanimal getanimal, Model model, Integer pageCur) {
        return adminOrderService.orderInfo(model,pageCur);
    }
    //orderlist查找用户
    @RequestMapping("/selectAOrder")
    public String userAOrder(@ModelAttribute Getanimal getanimal, Model model, Integer pageCur){
        return  adminOrderService.selectAOrder(getanimal, model, pageCur);
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
    //打来orderedit.jsp
    @RequestMapping("/toEditOrder")
    public String toEditOrder(Model model, Integer id){
        return adminOrderService.toEditOrder(model, id);
    }
////
    @RequestMapping("/editOrder")
    public String editAnimal(@ModelAttribute Getanimal getanimal, Model model){
        return adminOrderService.editOrder(getanimal, model);
    }
////
    @RequestMapping("/toDeleteOrder")
    public String toDeleteOrder(@ModelAttribute Getanimal getanimal, Model model, Integer pageCur){
        return adminOrderService.toDeleteOrder(model, pageCur);
    }
//
    @RequestMapping("/deleteAOrder")
    public String deleteAUser(Integer id, Model model){
        return adminOrderService.deleteAOrder(id, model);
    }
////
    @RequestMapping("/delSelectAOrder")
    public String delSelectAOrder(@ModelAttribute Getanimal getanimal, Model model, Integer pageCur){
        return adminOrderService.delSelectAOrder(getanimal, model, pageCur);
    }












}
