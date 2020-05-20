package service.admin;

import entity.News;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;

public interface AdminNewsService {

    public String newsInfo(Model model, Integer pageCur);
    public String selectANews(News news, Model model, Integer pageCur);
    public String addNews(News news, HttpServletRequest request, Model model);
    public String toEditNews(Model model, Integer id);
    public String editNews(News news, Model model);
    public String toDeleteNews(Model model, Integer pageCur);
    public String deleteANews(Integer id, Model model);
    public String delSelectANews(News news, Model model, Integer pageCur);
//    public String selelctUser(Model model);
//    public String deleteuserManager(Integer id, Model model);


}
