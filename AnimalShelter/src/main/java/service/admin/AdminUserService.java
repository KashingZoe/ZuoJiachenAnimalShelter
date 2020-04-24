package service.admin;

import entity.Buser;
import org.springframework.ui.Model;

public interface AdminUserService {

    public String userInfo(Model model);
    public String selectAUser(Buser buser, Model model);
    public String addUser(Buser buser, Model model);
    public String toEditUser(Model model, Integer id);
    public String editUser(Buser buser, Model model);
    public String selelctUser(Model model);
    public String deleteuserManager(Integer id, Model model);


}
