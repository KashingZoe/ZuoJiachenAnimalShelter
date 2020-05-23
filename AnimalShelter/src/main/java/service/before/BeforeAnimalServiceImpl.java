package service.before;

import dao.BeforeAnimalDao;
import entity.Animal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;


@Service("beforeAnimalService")
@Transactional
public class BeforeAnimalServiceImpl implements BeforeAnimalService {

    @Autowired
    private BeforeAnimalDao beforeAnimalDao;



    @Override
    public String selectAAnimal(Model model, Integer id) {
        Animal aanimal = beforeAnimalDao.selectAAnimal(id);

        model.addAttribute("animalList", aanimal);

        return "before/animaldetail";
    }

//    @Override
//    public String addAnimal(Animal animal, HttpServletRequest request, Model model) {
//        String newFileName = "";
//        String fileName = animal.getLogoImage().getOriginalFilename();
//
//        if(fileName.length() > 0){
//            String realpath = request.getServletContext().getRealPath("/logos");
//            System.out.println(realpath);
//            String fileType = fileName.substring(fileName.lastIndexOf('.'));
//            newFileName = MyUtil.getStringID() + fileType;
//            animal.setLpicture(newFileName);
//
//            File targetFile = new File(realpath, newFileName);
//            if(!targetFile.exists()){
//                targetFile.mkdirs();
//            }
//            try {
//                animal.getLogoImage().transferTo(targetFile);
//            } catch (Exception e) {
//                e.printStackTrace();
//            }
//        }
//        int n= adminAnimalDao.animalInsert(animal);
//        if(n>0) {
//            return "admin/useraddok";
//        }else {
//            model.addAttribute("msg", "fail to insert");
//            return "forward:/adminAnimal/toAddAnimal";
//        }
//    }
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