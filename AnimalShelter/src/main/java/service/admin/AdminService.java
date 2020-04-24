package service.admin;

import entity.Auser;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;

public interface AdminService {

    public String login(Auser auser, Model model, HttpSession session);


}
