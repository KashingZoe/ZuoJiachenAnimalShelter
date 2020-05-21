package service.admin;

import dao.AdminFeedbackDao;
import entity.Feedback;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service("adminFeedbackService")
@Transactional
public class AdminFeedbackServiceImpl implements AdminFeedbackService {

    @Autowired
    private AdminFeedbackDao adminFeedbackDao;

    //后台查询所有新闻
    @Override
    public String feedbackInfo(Model model, Integer pageCur) {

        List<Feedback> allfeedback = adminFeedbackDao.feedbackInfo();
        int totalcount = allfeedback.size();//查询记录数
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
        allfeedback = adminFeedbackDao.feedbackInfoPage(map);
        model.addAttribute("feedbackList", allfeedback);
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("pageCur", pageCur);
        return "admin/feedbacklist";

    }
    @Override
    public String editFeedback(Feedback feedback, Model model) {
        int n = adminFeedbackDao.editFeedback(feedback);
        if(n>0) {
            return "forward:/adminFeedback/feedbackInfo";

        }else {
            model.addAttribute("msg", "fail to update");
            return "forward:/adminFeedback/feedbackInfo";
        }
    }

    @Override
    public String toDeleteFeedback(Model model, Integer pageCur) {
        List<Feedback> allfeedback = adminFeedbackDao.feedbackInfo();
        int totalcount = allfeedback.size();//查询记录数
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
        allfeedback = adminFeedbackDao.feedbackInfoPage(map);
        model.addAttribute("feedbackList", allfeedback);
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("pageCur", pageCur);
        return "admin/feedbackdelete";
    }
    @Override
    public String deleteAFeedback(Integer id, Model model) {
        int n = adminFeedbackDao.deleteAFeedback(id);
        if (n > 0) {

            return "forward:/adminFeedback/toDeleteFeedback";

        }else {

            model.addAttribute("msg", "fail to delete Feedback "+id);
            return "forward:/adminFeedback/toDeleteFeedback";

        }
    }
    @Override
    public String selectAFeedback(Feedback feedback, Model model, Integer pageCur) {
        List<Feedback> allfeedback = adminFeedbackDao.selectAFeedback(feedback);
        int totalcount = allfeedback.size();//查询记录数
        model.addAttribute("totalRecord", totalcount);
        model.addAttribute("feedbackList", allfeedback);
        int totalPage = 1;
        if (pageCur == null) {
            pageCur = 1;
        }
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("pageCur", pageCur);
        return "admin/feedbacklist";
    }
    @Override
    public String delSelectAFeedback(Feedback feedback, Model model, Integer pageCur) {
        List<Feedback> allfeedback = adminFeedbackDao.selectAFeedback(feedback);
        int totalcount = allfeedback.size();//查询记录数
        model.addAttribute("totalRecord", totalcount);
        model.addAttribute("feedbackList", allfeedback);
        int totalPage = 1;
        if (pageCur == null) {
            pageCur = 1;
        }
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("pageCur", pageCur);
        return "admin/feedbackdelete";
    }

//    @Override
//    public String toDeleteNews(Model model, Integer pageCur) {
//        List<News> allnews = adminNewsDao.newsInfo();
//        int totalcount = allnews.size();//查询记录数
//        model.addAttribute("totalRecord", totalcount);
//        int totalPage = 0;
//        if (totalcount == 0) {
//            totalPage = 0;
//        } else {
//            totalPage = (int) Math.ceil((double) totalcount / 5);//函数返回大于或等于一个给定数字的最小整数。每五条记录为一页，计算总页数。
//        }
//        if (pageCur == null) {//开始时，pageCur为空默认为1，
//            pageCur = 1;
//        }
//        if ((pageCur - 1) * 5 > totalcount) {  //最后一页时，点下一页，防止发生错误
//            pageCur = pageCur - 1;
//        }
//        Map<String, Object> map = new HashMap<String, Object>();
//        map.put("startIndex", (pageCur - 1) * 5);
//        map.put("perPageSize", 5);
//        allnews = adminNewsDao.newsInfoPage(map);
//        model.addAttribute("newsList", allnews);
//        model.addAttribute("totalPage", totalPage);
//        model.addAttribute("pageCur", pageCur);
//        return "admin/newsdelete";
//    }
//
//    @Override
//    public String deleteANews(Integer id, Model model) {
//        int n = adminNewsDao.deleteANews(id);
//        if (n > 0) {
//
//            return "forward:/adminNews/toDeleteNews";
//
//        }else {
//
//            model.addAttribute("msg", "fail to delete News "+id);
//            return "forward:/adminNews/toDeleteNews";
//
//        }
//    }
//
//    @Override
//    public String delSelectANews(News news, Model model, Integer pageCur) {
//        List<News> allnews = adminNewsDao.selectANews(news);
//        int totalcount = allnews.size();//查询记录数
//        model.addAttribute("totalRecord", totalcount);
//        model.addAttribute("newsList", allnews);
//        int totalPage = 1;
//        if (pageCur == null) {
//            pageCur = 1;
//        }
//        model.addAttribute("totalPage", totalPage);
//        model.addAttribute("pageCur", pageCur);
//        return "admin/newsdelete";
//    }
//

//
//    @Override
//    public String addNews(News news, HttpServletRequest request, Model model) {
//        int n= adminNewsDao.newsInsert(news);
//        if(n>0) {
//            return "admin/useraddok";
//        }else {
//            model.addAttribute("msg", "fail to insert");
//            return "forward:/adminNews/toAddNews";
//        }
//    }
//
//    @Override
//    public String toEditNews(Model model, Integer id) {
//        News onenews = adminNewsDao.toEditNews(id);
//        model.addAttribute("news",onenews);
//        return "admin/newsedit";
//    }
//


}