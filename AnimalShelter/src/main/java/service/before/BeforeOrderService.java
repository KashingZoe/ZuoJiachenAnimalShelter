package service.before;

import entity.Getanimal;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;

public interface BeforeOrderService {

    //public String orderInfo(Model model, Integer pageCur);
    //public String selectAOrder(Getanimal getanimal, Model model, Integer pageCur);
    public String addOrder(Getanimal getanimal, HttpSession session, Model model,Integer aid);
    //public String toEditOrder(Model model, Integer id);
    //public String editOrder(Getanimal getanimal, Model model);
   // public String toDeleteOrder(Model model, Integer pageCur);
    //public String deleteAOrder(Integer id, Model model);
   // public String delSelectAOrder(Getanimal getanimal, Model model, Integer pageCur);
//    public String selelctUser(Model model);
//    public String deleteuserManager(Integer id, Model model);


}
