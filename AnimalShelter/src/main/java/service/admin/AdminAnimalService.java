package service.admin;

import entity.Animal;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;

public interface AdminAnimalService {

    public String animalInfo(Model model, Integer pageCur);
//    public String selectAUser(Buser buser, Model model, Integer pageCur);
    public String addAnimal(Animal animal, HttpServletRequest request, Model model);
    public String toEditAnimal(Model model, Integer id);
    public String editAnimal(Animal animal, Model model);
//    public String toDeleteUser(Model model, Integer pageCur);
//    public String deleteAUser(Integer id, Model model);
//    public String delSelectAUser(Buser buser, Model model, Integer pageCur);
//    public String selelctUser(Model model);
//    public String deleteuserManager(Integer id, Model model);


}
