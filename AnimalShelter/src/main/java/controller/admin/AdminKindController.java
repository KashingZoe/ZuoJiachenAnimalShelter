package controller.admin;

import entity.Animalkind;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import service.admin.AdminKindService;

@Controller
@RequestMapping("/adminKind")
public class AdminKindController {

    @Autowired
    private AdminKindService adminKindService;
    //查找所有的信息
    @RequestMapping("/kindInfo")
    public String kindInfo(@ModelAttribute Animalkind animalkind, Model model) {
        return adminKindService.kindInfo(model);
        //return null;
    }
    //跳转到删除页面
    @RequestMapping("/toDeleteKind")
    public String toDeleteKind(@ModelAttribute Animalkind animalkind, Model model){
        return adminKindService.toDeleteKind(model);
    }


    //打来kindadd.jsp
    @RequestMapping("/toAddKind")
    public String toAddKind(@ModelAttribute Animalkind animalkind){
        return "admin/kindadd";
    }

    //添加种类
    @RequestMapping("/addKind")
    public String addKind(@ModelAttribute Animalkind animalkind, Model model){
        return adminKindService.addKind(animalkind,model);
    }

    @RequestMapping("/deleteAKind")
    public String deleteAKind(Integer id, Model model){
        return adminKindService.deleteAKind(id, model);
    }
}
