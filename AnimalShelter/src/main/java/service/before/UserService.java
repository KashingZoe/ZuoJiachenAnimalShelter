package service.before;

import entity.Adopt;
import entity.Buser;
import entity.Lookmaster;
import entity.Lookpet;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;

public interface UserService {
    public String register(Buser buser, Model model, HttpSession session, String code);
    public String login(Buser buser, Model model, HttpSession session, String code);
    public String toUserindex(Adopt adopt, Model model, HttpSession session, Integer pageCur);
    public String toUsermaster(Lookmaster lookmaster, Model model, HttpSession session, Integer pageCur02);
    public String toUserpet(Lookpet lookpet, Model model, HttpSession session, Integer pageCur03);
    public String userIndex(Adopt adopt, Model model, Integer id);
    public String userMasterIndex(Lookmaster lookmaster, Model model, Integer id);
    public String userPetIndex(Lookpet lookpet, Model model, Integer id);
}
