package service.before;

import dao.BeforeFeedbackDao;
import entity.Feedback;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import util.MyUtil;

import javax.servlet.http.HttpSession;


@Service("beforeFeedbackService")
@Transactional
public class BeforeFeedbackServiceImpl implements BeforeFeedbackService {

    @Autowired
    private BeforeFeedbackDao beforeFeedbackDao;


//    @Override
//    public String animalInfo(Model model, Integer pageCur) {
//        List<Animal> allanimal = beforeAnimalDao.animalInfo();
//        //System.out.println(allanimal);
//        int totalcount = allanimal.size();//查询记录数
//        model.addAttribute("totalRecord", totalcount);
//        int totalPage = 0;
//        if (totalcount == 0) {
//            totalPage = 0;
//        } else {
//            totalPage = (int) Math.ceil((double) totalcount / 8);//函数返回大于或等于一个给定数字的最小整数。每五条记录为一页，计算总页数。
//        }
//        if (pageCur == null) {//开始时，pageCur为空默认为1，
//            pageCur = 1;
//        }
//        if ((pageCur - 1) * 8 > totalcount) {  //最后一页时，点下一页，防止发生错误
//            pageCur = pageCur - 1;
//        }
//        Map<String, Object> map = new HashMap<String, Object>();
//        map.put("startIndex", (pageCur - 1) * 8);
//        map.put("perPageSize", 8);
//        allanimal = beforeAnimalDao.animalInfoPage(map);
//        model.addAttribute("animalList", allanimal);
//        model.addAttribute("totalPage", totalPage);
//        model.addAttribute("pageCur", pageCur);
//        List<News> news = beforeNewsDao.newsLimit();
//        model.addAttribute("newList",news);
//        return "before/indexmore";
//    }
//
//    @Override
//    public String selectAAnimal(Model model, HttpSession session, Integer id) {
//        Animal aanimal = beforeAnimalDao.selectAAnimal(id);
//        session.setAttribute("animalid",id);
//
//        model.addAttribute("animalList", aanimal);
//
//        return "before/animaldetail";
//    }

    @Override
    public String addFeedback(Feedback feedback, Model model, HttpSession session) {

        feedback.setBuserid(MyUtil.getUserId(session));
        int n= beforeFeedbackDao.feedbackInsert(feedback);
        if(n>0) {
            model.addAttribute("msg", "发布成功");
            return "before/feedbackok";
        }else {
            model.addAttribute("msg", "发布失败,请重新发布!");
            return "forward:/beforeFeedback/toAddFeedback";

        }
    }






//
//    @Override
//    public String toEditAnimal(Model model, Integer id) {
//        Animal oneanimal = adminAnimalDao.toEditAnimal(id);
//        model.addAttribute("animal",oneanimal);
//        return "admin/animaledit";
//    }
//
//    @Override
//    public String editAnimal(Animal animal, Model model) {
//        int n = adminAnimalDao.editAnimal(animal);
//        if(n>0) {
//            return "admin/usereditok";
//
//        }else {
//            model.addAttribute("msg", "fail to update");
//            return "forward:/adminAnimal/toEditAnimal";
//        }
//    }
//
//    @Override
//    public String toDeleteAnimal(Model model, Integer pageCur) {
//        List<Animal> allanimal = adminAnimalDao.animalInfo();
//        int totalcount = allanimal.size();//查询记录数
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
//        allanimal = adminAnimalDao.animalInfoPage(map);
//        model.addAttribute("animalList", allanimal);
//        model.addAttribute("totalPage", totalPage);
//        model.addAttribute("pageCur", pageCur);
//        return "admin/animaldelete";
//    }
//
//    @Override
//    public String deleteAAnimal(Integer id, Model model) {
//        int n = adminAnimalDao.deleteAAnimal(id);
//        if (n > 0) {
//
//            return "forward:/adminAnimal/toDeleteAnimal";
//
//        }else {
//
//            model.addAttribute("msg", "fail to delete Animal "+id);
//            return "forward:/adminAnimal/toDeleteAnimal";
//
//        }
//    }
//
//    @Override
//    public String delSelectAAnimal(Animal animal, Model model, Integer pageCur) {
//        List<Animal> allanimal = adminAnimalDao.selectAAnimal(animal);
//        int totalcount = allanimal.size();//查询记录数
//        model.addAttribute("totalRecord", totalcount);
//        model.addAttribute("animalList", allanimal);
//        int totalPage = 1;
//        if (pageCur == null) {
//            pageCur = 1;
//        }
//        model.addAttribute("totalPage", totalPage);
//        model.addAttribute("pageCur", pageCur);
//        return "admin/animaldelete";
//    }
}