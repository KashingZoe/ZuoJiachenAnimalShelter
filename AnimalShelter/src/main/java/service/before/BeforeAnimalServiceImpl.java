package service.before;

import dao.BeforeAnimalDao;
import dao.BeforeMasterDao;
import dao.BeforeNewsDao;
import dao.BeforePetDao;
import entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import util.MyUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service("beforeAnimalService")
@Transactional
public class BeforeAnimalServiceImpl implements BeforeAnimalService {

    @Autowired
    private BeforeAnimalDao beforeAnimalDao;

    @Autowired
    private BeforeNewsDao beforeNewsDao;

    @Autowired
    private BeforeMasterDao beforeMasterDao;

    @Autowired
    private BeforePetDao beforePetDao;


    @Override
    public String animalInfo(Model model, Integer pageCur) {
        List<Animal> allanimal = beforeAnimalDao.animalInfo();
        //System.out.println(allanimal);
        int totalcount = allanimal.size();//查询记录数
        model.addAttribute("totalRecord", totalcount);
        int totalPage = 0;
        if (totalcount == 0) {
            totalPage = 0;
        } else {
            totalPage = (int) Math.ceil((double) totalcount / 10);//函数返回大于或等于一个给定数字的最小整数。每五条记录为一页，计算总页数。
        }
        if (pageCur == null) {//开始时，pageCur为空默认为1，
            pageCur = 1;
        }
        if ((pageCur - 1) * 10 > totalcount) {  //最后一页时，点下一页，防止发生错误
            pageCur = pageCur - 1;
        }
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("startIndex", (pageCur - 1) * 10);
        map.put("perPageSize", 10);
        allanimal = beforeAnimalDao.animalInfoPage(map);
        model.addAttribute("animalList", allanimal);
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("pageCur", pageCur);
        List<News> news = beforeNewsDao.newsLimit();
        model.addAttribute("newList",news);
        List<Lookmaster> lookmasters = beforeMasterDao.masterLimit();
        model.addAttribute("masterList",lookmasters);
        List<Lookpet> lookpets = beforePetDao.petLimit();
        model.addAttribute("petList",lookpets);
        return "before/indexmore";
    }

    @Override
    public String masterInfo(Model model, Integer pageCur) {
        List<Lookmaster> allmaster = beforeMasterDao.masterInfo();
        //System.out.println(allanimal);
        int totalcount = allmaster.size();//查询记录数
        model.addAttribute("totalRecord", totalcount);
        int totalPage = 0;
        if (totalcount == 0) {
            totalPage = 0;
        } else {
            totalPage = (int) Math.ceil((double) totalcount / 10);//函数返回大于或等于一个给定数字的最小整数。每五条记录为一页，计算总页数。
        }
        if (pageCur == null) {//开始时，pageCur为空默认为1，
            pageCur = 1;
        }
        if ((pageCur - 1) * 10 > totalcount) {  //最后一页时，点下一页，防止发生错误
            pageCur = pageCur - 1;
        }
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("startIndex", (pageCur - 1) * 10);
        map.put("perPageSize", 10);
        allmaster = beforeMasterDao.masterInfoPage(map);
        model.addAttribute("masterList", allmaster);
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("pageCur", pageCur);
        List<News> news = beforeNewsDao.newsLimit();
        model.addAttribute("newList",news);
        List<Animal> animals = beforeAnimalDao.animalLimit();
        model.addAttribute("animalList",animals);
        List<Lookpet> lookpets = beforePetDao.petLimit();
        model.addAttribute("petList",lookpets);
        return "before/mastermore";
    }

    @Override
    public String petInfo(Model model, Integer pageCur) {
        List<Lookpet> allpet = beforePetDao.petInfo();
        //System.out.println(allanimal);
        int totalcount = allpet.size();//查询记录数
        model.addAttribute("totalRecord", totalcount);
        int totalPage = 0;
        if (totalcount == 0) {
            totalPage = 0;
        } else {
            totalPage = (int) Math.ceil((double) totalcount / 10);//函数返回大于或等于一个给定数字的最小整数。每五条记录为一页，计算总页数。
        }
        if (pageCur == null) {//开始时，pageCur为空默认为1，
            pageCur = 1;
        }
        if ((pageCur - 1) * 10 > totalcount) {  //最后一页时，点下一页，防止发生错误
            pageCur = pageCur - 1;
        }
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("startIndex", (pageCur - 1) * 10);
        map.put("perPageSize", 10);
        allpet = beforePetDao.petInfoPage(map);
        model.addAttribute("petList", allpet);
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("pageCur", pageCur);
        List<News> news = beforeNewsDao.newsLimit();
        model.addAttribute("newList",news);
        List<Animal> animals = beforeAnimalDao.animalLimit();
        model.addAttribute("animalList",animals);
        List<Lookmaster> lookmasters = beforeMasterDao.masterLimit();
        model.addAttribute("masterList",lookmasters);
        return "before/petmore";
    }

    @Override
    public String selectAAnimal(Model model, HttpSession session, Integer id) {
        Animal aanimal = beforeAnimalDao.selectAAnimal(id);
        session.setAttribute("animalid",id);

        model.addAttribute("animalList", aanimal);

        return "before/animaldetail";
    }

    @Override
    public String addAnimal(Animal animal, HttpServletRequest request, Model model, HttpSession session) {
        String newFileName = "";
        String fileName = animal.getLogoImage().getOriginalFilename();

        if(fileName.length() > 0){
            String realpath = request.getServletContext().getRealPath("/logos");
            //System.out.println(realpath);
            String fileType = fileName.substring(fileName.lastIndexOf('.'));
            newFileName = MyUtil.getStringID() + fileType;
            animal.setLpicture(newFileName);

            File targetFile = new File(realpath, newFileName);
            if(!targetFile.exists()){
                targetFile.mkdirs();
            }
            try {
                animal.getLogoImage().transferTo(targetFile);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        animal.setBuserid(MyUtil.getUserId(session));
        int n= beforeAnimalDao.animalInsert(animal);
        if(n>0) {
            model.addAttribute("msg", "发布成功");
            return "before/add01ok";
        }else {
            model.addAttribute("msg", "发布失败,请重新发布");
            return "forward:/beforeAnimal/toAddAnimal";
        }
    }




    @Override
    public String addMaster(Lookmaster lookmaster, HttpServletRequest request, Model model, HttpSession session) {
        String newFileName = "";
        String fileName = lookmaster.getLogoImage().getOriginalFilename();

        if(fileName.length() > 0){
            String realpath = request.getServletContext().getRealPath("/logos");
            //System.out.println(realpath);
            String fileType = fileName.substring(fileName.lastIndexOf('.'));
            newFileName = MyUtil.getStringID() + fileType;
            lookmaster.setMpicture(newFileName);

            File targetFile = new File(realpath, newFileName);
            if(!targetFile.exists()){
                targetFile.mkdirs();
            }
            try {
                lookmaster.getLogoImage().transferTo(targetFile);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        lookmaster.setBuserid(MyUtil.getUserId(session));
        int n= beforeAnimalDao.masterInsert(lookmaster);
        if(n>0) {
            model.addAttribute("msg", "发布成功");
            return "before/add01ok";
        }else {
            model.addAttribute("msg", "发布失败,请重新发布");
            return "forward:/beforeAnimal/toAddMaster";
        }
    }

    @Override
    public String addPet(Lookpet lookpet, HttpServletRequest request, Model model, HttpSession session) {
        String newFileName = "";
        String fileName = lookpet.getLogoImage().getOriginalFilename();

        if(fileName.length() > 0){
            String realpath = request.getServletContext().getRealPath("/logos");
            //System.out.println(realpath);
            String fileType = fileName.substring(fileName.lastIndexOf('.'));
            newFileName = MyUtil.getStringID() + fileType;
            lookpet.setPpicture(newFileName);

            File targetFile = new File(realpath, newFileName);
            if(!targetFile.exists()){
                targetFile.mkdirs();
            }
            try {
                lookpet.getLogoImage().transferTo(targetFile);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        lookpet.setBuserid(MyUtil.getUserId(session));
        int n= beforeAnimalDao.petInsert(lookpet);
        if(n>0) {
            model.addAttribute("msg", "发布成功");
            return "before/add01ok";
        }else {
            model.addAttribute("msg", "发布失败,请重新发布");
            return "forward:/beforeAnimal/toAddPet";
        }
    }

    @Override
    public String selectAMaster(Model model, HttpSession session, Integer id) {
        Masterdetail lookmaster = beforeMasterDao.selectAMaster(id);


        model.addAttribute("masterList", lookmaster);

        return "before/masterdetail";
    }

    @Override
    public String selectAPet(Model model, HttpSession session, Integer id) {
        Petdetail lookpet = beforePetDao.selectAPet(id);


        model.addAttribute("petList", lookpet);

        return "before/petdetail";
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