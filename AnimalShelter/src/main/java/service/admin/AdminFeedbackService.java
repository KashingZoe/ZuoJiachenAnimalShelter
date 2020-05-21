package service.admin;

import entity.Feedback;
import org.springframework.ui.Model;

public interface AdminFeedbackService {

    public String feedbackInfo(Model model, Integer pageCur);
    public String selectAFeedback(Feedback feedback, Model model, Integer pageCur);
//    public String addNews(News news, HttpServletRequest request, Model model);
//    public String toEditNews(Model model, Integer id);
    public String editFeedback(Feedback feedback, Model model);
    public String toDeleteFeedback(Model model, Integer pageCur);
    public String deleteAFeedback(Integer id, Model model);
    public String delSelectAFeedback(Feedback feedback, Model model, Integer pageCur);
//    public String selelctUser(Model model);
//    public String deleteuserManager(Integer id, Model model);


}
