package service.admin;

import dao.AdminKindDao;
import entity.Animalkind;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import java.util.List;
@Service("adminKindSerivce")
@Transactional
public class AdminKindServiceImpl implements AdminKindService {

    @Autowired
    private AdminKindDao adminKindDao;

    @Override
    public String kindInfo(Model model) {
        List<Animalkind> allkind = adminKindDao.kindInfo();
        int totalcount = allkind.size();//查询记录数
        model.addAttribute("totalRecord", totalcount);
        model.addAttribute("kindList", allkind);
        return "admin/kindlist";
    }

    @Override
    public String toDeleteKind(Model model) {
        List<Animalkind> allkind = adminKindDao.kindInfo();
        int totalcount = allkind.size();//查询记录数
        model.addAttribute("totalRecord", totalcount);
        model.addAttribute("delKindList", allkind);
        return "admin/kinddelete";
    }

    @Override
    public String addKind(Animalkind animalkind,Model model) {
        int n= adminKindDao.kindInsert(animalkind);
        if(n>0) {
            return "admin/useraddok";
        }else {
            model.addAttribute("msg", "fail to insert");
            return "forward:/adminKind/toAddKind";
        }
    }

    @Override
    public String deleteAKind(Integer id, Model model) {
        int n = adminKindDao.deleteAKind(id);
        if (n > 0) {

            return "forward:/adminKind/toDeleteKind";

        }else {

            model.addAttribute("msg", "fail to delete kind "+id);
            return "forward:/adminKind/toDeleteKind";

        }
    }
}
