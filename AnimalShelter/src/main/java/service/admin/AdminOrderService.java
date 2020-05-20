package service.admin;

import entity.Getanimal;
import org.springframework.ui.Model;

public interface AdminOrderService {

    public String orderInfo(Model model, Integer pageCur);
    public String selectAOrder(Getanimal getanimal, Model model, Integer pageCur);
//    public String addAnimal(Animal animal, HttpServletRequest request, Model model);
    public String toEditOrder(Model model, Integer id);
    public String editOrder(Getanimal getanimal, Model model);
    public String toDeleteOrder(Model model, Integer pageCur);
    public String deleteAOrder(Integer id, Model model);
    public String delSelectAOrder(Getanimal getanimal, Model model, Integer pageCur);
//    public String selelctUser(Model model);
//    public String deleteuserManager(Integer id, Model model);


}
