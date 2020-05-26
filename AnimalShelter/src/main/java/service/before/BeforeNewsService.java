package service.before;

import org.springframework.ui.Model;

public interface BeforeNewsService {

    public String newsInfo(Model model, Integer pageCur);
    public String selectANews(Model model, Integer id);



}
