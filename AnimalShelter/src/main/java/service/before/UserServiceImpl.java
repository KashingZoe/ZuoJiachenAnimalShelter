package service.before;

import dao.*;
import entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import util.MyUtil;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private BeforeUserDao beforeUserDao;
    @Autowired
    private AdminKindDao adminKindDao;

    @Autowired
    private BeforeOrderDao beforeOrderDao;

    @Autowired
    private BeforeMasterDao beforeMasterDao;

    @Autowired
    private BeforePetDao beforePetDao;







    //注册
    public String register(Buser buser, Model model, HttpSession session, String code) {
//        if(!code.equalsIgnoreCase(session.getAttribute("code").toString())) {
//            model.addAttribute("codeError","codeError");
//            return "before/userreg";
//        }
        int n= beforeUserDao.register(buser);
        if(n>0) {
            return"before/userlogin";
        }else {
            model.addAttribute("msg", "fail to register");
            return"before/userreg";
        }
    }
    //登录
    public String login(Buser buser, Model model, HttpSession session, String code) {
//        if(!code.equalsIgnoreCase(session.getAttribute("code").toString())) {
//            model.addAttribute("msg", "codeError");
//            return "before/login";
//        }
        Buser ruser = null;
        List<Buser> list=beforeUserDao.login(buser);
        List<Animalkind> kind = adminKindDao.kindInfo();
        if(list.size()>0) {
            ruser=list.get(0);
        }
        if(ruser !=null) {
            session.setAttribute("kind", kind);
            session.setAttribute("bruser", ruser);
            System.out.println(ruser);
            return"forward:/before";
        }else {
            model.addAttribute("msg", "ERROR Incorrect username or password");
            return"before/login";

        }

    }

    @Override
    public String toUserindex(Adopt adopt, Model model, HttpSession session, Integer pageCur) {


        //model.addAttribute("adoptList",adopts);


        List<Adopt> adopts = beforeOrderDao.selectAllOrder(MyUtil.getUserId(session));
        //System.out.println(allanimal);
        int totalcount = adopts.size();//查询记录数
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
        map.put("buserid",MyUtil.getUserId(session));
        adopts = beforeOrderDao.allInfoPage(map);
        model.addAttribute("adoptList", adopts);
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("pageCur", pageCur);

        List<Lookmaster> lookmasters = beforeMasterDao.masterFive(MyUtil.getUserId(session));
        model.addAttribute("masterList",lookmasters);

        List<Lookpet> lookpets = beforePetDao.petFive(MyUtil.getUserId(session));
        model.addAttribute("petList",lookpets);


        return "before/userindex";




    }

    @Override
    public String toUsermaster(Lookmaster lookmaster, Model model, HttpSession session, Integer pageCur) {

        List<Lookmaster> lookmasters = beforeMasterDao.masterAll(MyUtil.getUserId(session));
        //System.out.println(allanimal);
        int totalcount = lookmasters.size();//查询记录数
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
        map.put("buserid",MyUtil.getUserId(session));
        lookmasters = beforeMasterDao.masterIndexPage(map);
        model.addAttribute("masterList", lookmasters);
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("pageCur", pageCur);

        List<Adopt> adopts = beforeOrderDao.selectFiveOrder(MyUtil.getUserId(session));
        model.addAttribute("adoptList",adopts);

        List<Lookpet> lookpets = beforePetDao.petFive(MyUtil.getUserId(session));
        model.addAttribute("petList",lookpets);
        return "before/usermaster";
    }

    @Override
    public String toUserpet(Lookpet lookpet, Model model, HttpSession session, Integer pageCur) {
        List<Lookpet> lookpets = beforePetDao.petAll(MyUtil.getUserId(session));
        //System.out.println(allanimal);
        int totalcount = lookpets.size();//查询记录数
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
        map.put("buserid",MyUtil.getUserId(session));
        lookpets = beforePetDao.petIndexPage(map);
        model.addAttribute("petList", lookpets);
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("pageCur", pageCur);

        List<Adopt> adopts = beforeOrderDao.selectFiveOrder(MyUtil.getUserId(session));
        model.addAttribute("adoptList",adopts);

        List<Lookmaster> lookmasters = beforeMasterDao.masterFive(MyUtil.getUserId(session));
        model.addAttribute("masterList",lookmasters);

        return "before/userpet";
    }

    @Override
    public String userIndex(Adopt adopt, Model model, Integer id) {


        Adopt adopts = beforeOrderDao.userIndex(id);


        model.addAttribute("adoptList", adopts);

        return "before/userindexdetail";
    }

    @Override
    public String userMasterIndex(Lookmaster lookmaster, Model model, Integer id) {


        Lookmaster lookmaster1 = beforeMasterDao.userMasterIndex(id);


        model.addAttribute("masterList", lookmaster1);

        return "before/usermasterindexdetail";
    }

    @Override
    public String userPetIndex(Lookpet lookpet, Model model, Integer id) {


        Lookpet lookpet1 = beforePetDao.userPetIndex(id);


        model.addAttribute("petList", lookpet1);

        return "before/userpetindexdetail";
    }

}
