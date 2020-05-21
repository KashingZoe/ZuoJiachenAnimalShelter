package controller.admin;

import entity.Feedback;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import service.admin.AdminFeedbackService;

@Controller
@RequestMapping("/adminFeedback")
public class AdminFeedbackController {

    @Autowired
    private AdminFeedbackService adminFeedbackService;

    //查找所有的信息
    @RequestMapping("/feedbackInfo")
    public String feedbackInfo(@ModelAttribute Feedback feedback, Model model, Integer pageCur) {
        return adminFeedbackService.feedbackInfo(model,pageCur);
    }
    @RequestMapping("/editFeedback")
    public String editFeedback(@ModelAttribute Feedback feedback, Model model){
        return adminFeedbackService.editFeedback(feedback, model);
    }
    @RequestMapping("/toDeleteFeedback")
    public String toDeleteNews(@ModelAttribute Feedback feedback, Model model, Integer pageCur){
        return adminFeedbackService.toDeleteFeedback(model, pageCur);
    }
    @RequestMapping("/deleteAFeedback")
    public String deleteANews(Integer id, Model model){
        return adminFeedbackService.deleteAFeedback(id, model);
    }
    //查找一条记录
    @RequestMapping("/selectAFeedback")
    public String userAFeedback(@ModelAttribute Feedback feedback, Model model, Integer pageCur){
        return  adminFeedbackService.selectAFeedback(feedback, model, pageCur);
    }
    @RequestMapping("/delSelectAFeedback")
    public String delSelectAFeedback(@ModelAttribute Feedback feedback, Model model, Integer pageCur){
        return adminFeedbackService.delSelectAFeedback(feedback, model, pageCur);
    }

//    //打来newsadd.jsp
//    @RequestMapping("/toAddNews")
//    public String toAddNews(@ModelAttribute News news){
//        return "admin/newsadd";
//    }
////
//    //添加新闻
//    @RequestMapping("/addNews")
//    public String addNews(@ModelAttribute News news, HttpServletRequest request, Model model){
//        return adminNewsService.addNews(news,request,model);
//    }
//////
//////
//    //打来useredit.jsp
//    @RequestMapping("/toEditNews")
//    public String toEditNews(Model model, Integer id){
//        return adminNewsService.toEditNews(model, id);
//    }
//////
//    @RequestMapping("/editNews")
//    public String editNews(@ModelAttribute News news, Model model){
//        return adminNewsService.editNews(news, model);
//    }
//////

////

//////
//    @RequestMapping("/delSelectANews")
//    public String delSelectANews(@ModelAttribute News news, Model model, Integer pageCur){
//        return adminNewsService.delSelectANews(news, model, pageCur);
//    }












}
