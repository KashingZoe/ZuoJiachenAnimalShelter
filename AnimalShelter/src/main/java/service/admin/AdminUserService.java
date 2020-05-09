package service.admin;

import entity.Buser;
import org.springframework.ui.Model;

public interface AdminUserService {

    public String userInfo(Model model, Integer pageCur);
    public String selectAUser(Buser buser, Model model, Integer pageCur);
    public String addUser(Buser buser, Model model);
    public String toEditUser(Model model, Integer id);
    public String editUser(Buser buser, Model model);
    public String toDeleteUser(Model model, Integer pageCur);
    public String deleteAUser(Integer id, Model model);
    public String delSelectAUser(Buser buser, Model model, Integer pageCur);
    public String selelctUser(Model model);
    public String deleteuserManager(Integer id, Model model);


}
