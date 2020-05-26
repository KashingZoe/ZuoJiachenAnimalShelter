package controller.before;

import entity.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import service.before.BeforeNewsService;

@Controller
@RequestMapping("/beforeNews")
public class BeforeNewsController {

    @Autowired
    private BeforeNewsService beforeNewsService;

    //查找所有的信息
    @RequestMapping("/newsInfo")
    public String newsInfo(@ModelAttribute News news, Model model, Integer pageCur) {
        return beforeNewsService.newsInfo(model,pageCur);
    }
    //newslist查找用户
    @RequestMapping("/selectANews")
    public String selectANews(Model model, Integer id){
        System.out.println(id);
        return  beforeNewsService.selectANews(model, id);
    }







}
