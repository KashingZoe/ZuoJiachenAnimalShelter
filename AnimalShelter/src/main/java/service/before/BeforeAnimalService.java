package service.before;

import entity.Animal;
import entity.Lookmaster;
import entity.Lookpet;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public interface BeforeAnimalService {

      public String animalInfo(Model model, Integer pageCur);
      public String masterInfo(Model model, Integer pageCur);
      public String petInfo(Model model, Integer pageCur);
      public String selectAAnimal(Model model, HttpSession session, Integer id);
      public String addAnimal(Animal animal, HttpServletRequest request, Model model,HttpSession session);

      public String addMaster(Lookmaster lookmaster, HttpServletRequest request, Model model, HttpSession session);

      public String addPet(Lookpet lookpet, HttpServletRequest request, Model model, HttpSession session);

      public String selectAMaster(Model model, HttpSession session, Integer id);
      public String selectAPet(Model model, HttpSession session, Integer id);
//    public String toEditAnimal(Model model, Integer id);
//    public String editAnimal(Animal animal, Model model);
//    public String toDeleteAnimal(Model model, Integer pageCur);
//    public String deleteAAnimal(Integer id, Model model);
//    public String delSelectAAnimal(Animal animal, Model model, Integer pageCur);
//    public String selelctUser(Model model);
//    public String deleteuserManager(Integer id, Model model);


}
