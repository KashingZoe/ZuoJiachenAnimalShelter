package controller.before;

import entity.Adopt;
import entity.Buser;
import entity.Lookmaster;
import entity.Lookpet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import service.before.UserService;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    //注册添加数据
    @RequestMapping("/register")
    public String register(@ModelAttribute Buser buser, Model model, HttpSession session, String code){
        return userService.register(buser, model, session, code);
    }

    //登录验证
    @RequestMapping("/login")
    public String login(@ModelAttribute Buser buser, Model model, HttpSession session, String code){
        return userService.login(buser, model, session, code);
    }

    //退出
    @RequestMapping("/exit")
    public String exit (HttpSession session) {
        session.invalidate();
        return "forward:/before";
    }

    //userindex
    @RequestMapping("/touserindex")
    public String toUserindex(@ModelAttribute Adopt adopt, Model model, HttpSession session, Integer pageCur){
        return userService.toUserindex(adopt, model, session,pageCur);
    }

    //user
    @RequestMapping("/tousermaster")
    public String toUsermaster(@ModelAttribute Lookmaster lookmaster, Model model, HttpSession session, Integer pageCur02){
        return userService.toUsermaster(lookmaster, model, session,pageCur02);
    }

    //userindex
    @RequestMapping("/touserpet")
    public String toUserpet(@ModelAttribute Lookpet lookpet, Model model, HttpSession session, Integer pageCur03){
        return userService.toUserpet(lookpet, model, session,pageCur03);
    }

    //userindexdetail
    @RequestMapping("/userindex")
    public String userIndex(@ModelAttribute Adopt adopt, Model model, Integer id){
        return userService.userIndex(adopt, model, id);
    }

    //usermasterindexdetail
    @RequestMapping("/usermasterindex")
    public String userMasterIndex(@ModelAttribute Lookmaster lookmaster, Model model, Integer id){
        return userService.userMasterIndex(lookmaster, model, id);
    }

    //userpetindexdetail
    @RequestMapping("/userpetindex")
    public String userPetIndex(@ModelAttribute Lookpet lookpet, Model model, Integer id){
        return userService.userPetIndex(lookpet, model, id);
    }


    //userset
    @RequestMapping("/touserset")
    public String toUserSet(@ModelAttribute Adopt adopt, Model model, HttpSession session, Integer pageCur){
        //return userService.toUserindex(adopt, model, session,pageCur);
        return "before/userset";
    }

    //usermessage
    @RequestMapping("/tousermessage")
    public String toUserMessage(@ModelAttribute Adopt adopt, Model model, HttpSession session, Integer pageCur){
        //return userService.toUserindex(adopt, model, session,pageCur);
        return "before/usermessage";
    }

    @RequestMapping("/deleteAUserMaster")
    public String deleteAUserMaster(Integer id, Model model){
        return userService.deleteAUserMaster(id, model);
    }


    @RequestMapping("/deleteAUserPet")
    public String deleteAUserPet(Integer id, Model model){
        return userService.deleteAUserPet(id, model);
    }

}
