package service.before;


import dao.BeforeAnimalDao;
import dao.BeforeNewsDao;
import entity.Animal;
import entity.Buser;
import entity.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service("indexService")
@Transactional
public class IndexServiceImpl implements IndexService {

    @Autowired
    private  BeforeAnimalDao beforeAnimalDao;
    @Autowired
    private BeforeNewsDao beforeNewsDao;
//    @Autowired
//    private BuserDao buserDao;
    //打开主页
    public String before(Model model, HttpSession session){
        List<Animal> animal = beforeAnimalDao.animalLimit();
        model.addAttribute("animalList", animal);
        List<News> news = beforeNewsDao.newsLimit();
        model.addAttribute("newList",news);
        return "before/index";
    }

    //注册
    public String toRegister(Model model){
        model.addAttribute("rbuser", new Buser());
        return "before/userreg";
    }

    //登录
    public String toLogin(Model model){
        model.addAttribute("lbuser", new Buser());
        return "before/userlogin";
    }

}
