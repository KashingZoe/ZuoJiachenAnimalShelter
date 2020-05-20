package controller.admin;

import entity.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import service.admin.AdminNewsService;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/adminNews")
public class AdminNewsController {

    @Autowired
    private AdminNewsService adminNewsService;

    //查找所有的信息
    @RequestMapping("/newsInfo")
    public String newsInfo(@ModelAttribute News news, Model model, Integer pageCur) {
        return adminNewsService.newsInfo(model,pageCur);
    }
    //newslist查找用户
    @RequestMapping("/selectANews")
    public String userANews(@ModelAttribute News news, Model model, Integer pageCur){
        return  adminNewsService.selectANews(news, model, pageCur);
    }
    //打来newsadd.jsp
    @RequestMapping("/toAddNews")
    public String toAddNews(@ModelAttribute News news){
        return "admin/newsadd";
    }
//
    //添加新闻
    @RequestMapping("/addNews")
    public String addNews(@ModelAttribute News news, HttpServletRequest request, Model model){
        return adminNewsService.addNews(news,request,model);
    }
////
////
    //打来useredit.jsp
    @RequestMapping("/toEditNews")
    public String toEditNews(Model model, Integer id){
        return adminNewsService.toEditNews(model, id);
    }
////
    @RequestMapping("/editNews")
    public String editNews(@ModelAttribute News news, Model model){
        return adminNewsService.editNews(news, model);
    }
////
    @RequestMapping("/toDeleteNews")
    public String toDeleteNews(@ModelAttribute News news, Model model, Integer pageCur){
        return adminNewsService.toDeleteNews(model, pageCur);
    }
//
    @RequestMapping("/deleteANews")
    public String deleteANews(Integer id, Model model){
        return adminNewsService.deleteANews(id, model);
    }
////
    @RequestMapping("/delSelectANews")
    public String delSelectANews(@ModelAttribute News news, Model model, Integer pageCur){
        return adminNewsService.delSelectANews(news, model, pageCur);
    }












}
