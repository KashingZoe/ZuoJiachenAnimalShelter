package service.admin;

import dao.AdminUserDao;
import dao.BuserDao;
import entity.Buser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service("adminUserService")
@Transactional
public class AdminUserServiceImpl implements AdminUserService{

    @Autowired
    private AdminUserDao adminUserDao;
    @Autowired
    private BuserDao buserDao;

    //后台查询所有用户
    @Override
    public String userInfo(Model model, Integer pageCur) {
        List<Buser> alluser = adminUserDao.userInfo();
        int totalcount = alluser.size();//查询记录数
        model.addAttribute("totalRecord", totalcount);
        int totalPage = 0;
        if (totalcount == 0) {
            totalPage = 0;
        } else {
            totalPage = (int) Math.ceil((double) totalcount / 5);//函数返回大于或等于一个给定数字的最小整数。每五条记录为一页，计算总页数。
        }
        if (pageCur == null) {//开始时，pageCur为空默认为1，
            pageCur = 1;
        }
        if ((pageCur - 1) * 5 > totalcount) {  //最后一页时，点下一页，防止发生错误
            pageCur = pageCur - 1;
        }
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("startIndex", (pageCur - 1) * 5);
        map.put("perPageSize", 5);
        alluser = adminUserDao.userInfoPage(map);
        model.addAttribute("userList", alluser);
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("pageCur", pageCur);
        return "admin/userlist";
    }
    //查询一个用户
    @Override
    public String selectAUser(Buser buser, Model model, Integer pageCur) {
        List<Buser> alluser = adminUserDao.selectAUser(buser);
        int totalcount = alluser.size();//查询记录数
        model.addAttribute("totalRecord", totalcount);
        model.addAttribute("userList", alluser);
        int totalPage = 1;
        if (pageCur == null) {
            pageCur = 1;
        }
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("pageCur", pageCur);
        return "admin/userlist";
    }
    //添加用户
    @Override
    public String addUser(Buser buser, Model model) {
        int n= buserDao.insert(buser);
        if(n>0) {
            return "admin/useraddok";
        }else {
            model.addAttribute("msg", "fail to insert");
            return "forward:/adminUser/toAddUser";
        }
    }
    //打开修改用户页面
    @Override
    public String toEditUser(Model model,Integer id) {
        Buser oneuser = adminUserDao.toEditUser(id);
        model.addAttribute("buser",oneuser);
        return "admin/useredit";
    }

    //修改用户
    @Override
    public String editUser(Buser buser, Model model) {
        int n = adminUserDao.editUser(buser);
        if(n>0) {
            return "admin/usereditok";

        }else {
            model.addAttribute("msg", "fail to update");
            return "forward:/adminUser/toEditUser";
        }

    }
    //打开删除用户页面
    @Override
    public String toDeleteUser(Model model, Integer pageCur) {
        List<Buser> alluser = adminUserDao.userInfo();
        int totalcount = alluser.size();//查询记录数
        model.addAttribute("totalRecord", totalcount);
        int totalPage = 0;
        if (totalcount == 0) {
            totalPage = 0;
        } else {
            totalPage = (int) Math.ceil((double) totalcount / 5);//函数返回大于或等于一个给定数字的最小整数。每五条记录为一页，计算总页数。
        }
        if (pageCur == null) {//开始时，pageCur为空默认为1，
            pageCur = 1;
        }
        if ((pageCur - 1) * 5 > totalcount) {  //最后一页时，点下一页，防止发生错误
            pageCur = pageCur - 1;
        }
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("startIndex", (pageCur - 1) * 5);
        map.put("perPageSize", 5);
        alluser = adminUserDao.userInfoPage(map);
        model.addAttribute("delUserList", alluser);
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("pageCur", pageCur);
        //model.addAttribute("delUserList",adminUserDao.userInfo());
        return "admin/userdelete";
    }
    //删除用户
    @Override
    public String deleteAUser(Integer id, Model model) {
        int n = adminUserDao.deleteAUser(id);
        if (n > 0) {

            return "forward:/adminUser/toDeleteUser";

        }else {

            model.addAttribute("msg", "fail to delete user "+id);
            return "forward:/adminUser/toDeleteUser";

        }


    }
    //删除用户中查询一个用户
    @Override
    public String delSelectAUser(Buser buser, Model model, Integer pageCur) {
        List<Buser> alluser = adminUserDao.selectAUser(buser);
        int totalcount = alluser.size();//查询记录数
        model.addAttribute("totalRecord", totalcount);
        model.addAttribute("delUserList", alluser);
        int totalPage = 1;
        if (pageCur == null) {
            pageCur = 1;
        }
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("pageCur", pageCur);
        //model.addAttribute("delUserList",adminUserDao.selectAUser(buser));
        return "admin/userdelete";
    }

    @Override
    public String selelctUser(Model model) {
        return null;
    }

    @Override
    public String deleteuserManager(Integer id, Model model) {
        return null;
    }
}
