package service.admin;

import entity.Feedback;
import org.springframework.ui.Model;

public interface AdminFeedbackService {

    public String feedbackInfo(Model model, Integer pageCur);
//    public String selectANews(News news, Model model, Integer pageCur);
//    public String addNews(News news, HttpServletRequest request, Model model);
//    public String toEditNews(Model model, Integer id);
    public String editFeedback(Feedback feedback, Model model);
//    public String toDeleteNews(Model model, Integer pageCur);
//    public String deleteANews(Integer id, Model model);
//    public String delSelectANews(News news, Model model, Integer pageCur);
//    public String selelctUser(Model model);
//    public String deleteuserManager(Integer id, Model model);


}
