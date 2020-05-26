package service.before;

import dao.BeforeNewsDao;
import entity.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service("beforeNewsService")
@Transactional
public class BeforeNewsServiceImpl implements BeforeNewsService {

    @Autowired
    private BeforeNewsDao beforeNewsDao;

    //后台查询所有新闻
    @Override
    public String newsInfo(Model model, Integer pageCur) {

        List<News> allnews = beforeNewsDao.newsAll();
        int totalcount = allnews.size();//查询记录数
        model.addAttribute("totalRecord", totalcount);
        int totalPage = 0;
        if (totalcount == 0) {
            totalPage = 0;
        } else {
            totalPage = (int) Math.ceil((double) totalcount / 8);//函数返回大于或等于一个给定数字的最小整数。每五条记录为一页，计算总页数。
        }
        if (pageCur == null) {//开始时，pageCur为空默认为1，
            pageCur = 1;
        }
        if ((pageCur - 1) * 8 > totalcount) {  //最后一页时，点下一页，防止发生错误
            pageCur = pageCur - 1;
        }
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("startIndex", (pageCur - 1) * 8);
        map.put("perPageSize", 8);
        allnews = beforeNewsDao.newsInfoPage(map);
        model.addAttribute("newsList", allnews);
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("pageCur", pageCur);
        return "before/news";

    }

    @Override
    public String selectANews(Model model,Integer id) {
        News anews = beforeNewsDao.selectANews(id);
        model.addAttribute("newsList", anews);
        return "before/newsdetail";
    }



}