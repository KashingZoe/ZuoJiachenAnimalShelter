package service.admin;

import entity.Animalkind;
import org.springframework.ui.Model;

public interface AdminKindService {

    public String kindInfo(Model model);
    public String toDeleteKind(Model model);
    public String addKind(Animalkind animalkind,Model model);
    public String deleteAKind(Integer id, Model model);

}
