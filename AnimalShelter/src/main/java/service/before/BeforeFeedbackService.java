package service.before;

import entity.Feedback;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;

public interface BeforeFeedbackService {

//      public String animalInfo(Model model, Integer pageCur);
//      public String selectAAnimal(Model model, HttpSession session, Integer pageCur);
      public String addFeedback(Feedback feedback, Model model, HttpSession session);


//    public String toEditAnimal(Model model, Integer id);
//    public String editAnimal(Animal animal, Model model);
//    public String toDeleteAnimal(Model model, Integer pageCur);
//    public String deleteAAnimal(Integer id, Model model);
//    public String delSelectAAnimal(Animal animal, Model model, Integer pageCur);
//    public String selelctUser(Model model);
//    public String deleteuserManager(Integer id, Model model);


}
