package service.before;

import entity.Visit;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public interface BeforeVistService {

    public String visitInfo(Model model, Integer pageCur);
    public String visitMyInfo(Model model,Integer pageCur, HttpSession session);
      //public String selectAAnimal(Model model, HttpSession session, Integer pageCur);
      public String addVisit(Visit visit, HttpServletRequest request, Model model, HttpSession session);
//    public String toEditAnimal(Model model, Integer id);
//    public String editAnimal(Animal animal, Model model);
//    public String toDeleteAnimal(Model model, Integer pageCur);
    public String deleteAVisit(Integer id, Model model);
//    public String delSelectAAnimal(Animal animal, Model model, Integer pageCur);
//    public String selelctUser(Model model);
//    public String deleteuserManager(Integer id, Model model);


}
