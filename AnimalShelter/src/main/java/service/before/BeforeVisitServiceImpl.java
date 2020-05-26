package service.before;

import dao.BeforeVisitDao;
import entity.Visit;
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


@Service("beforeVisitService")
@Transactional
public class BeforeVisitServiceImpl implements BeforeVistService {

    @Autowired
    private BeforeVisitDao beforeVisitDao;



    //后台查询所有用户
    @Override
    public String visitInfo(Model model, Integer pageCur) {

        List<Visit> allvisit = beforeVisitDao.visitInfo();
        //System.out.println(allanimal);
        int totalcount = allvisit.size();//查询记录数
        //model.addAttribute("totalRecord", totalcount);
        int totalPage = 0;
        if (totalcount == 0) {
            totalPage = 0;
        } else {
            totalPage = (int) Math.ceil((double) totalcount / 8);//函数返回大于或等于一个给定数字的最小整数。每五条记录为一页，计算总页数。
        }
        if (pageCur == null) {//开始时，pageCur为空默认为1，
            pageCur = 1;
        }
        if ((pageCur - 1) * 5 > totalcount) {  //最后一页时，点下一页，防止发生错误
            pageCur = pageCur - 1;
        }
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("startIndex", (pageCur - 1) * 8);
        map.put("perPageSize", 8);
        allvisit = beforeVisitDao.visitInfoPage(map);
        model.addAttribute("visitList", allvisit);
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("pageCur", pageCur);
        return "before/animalvisit";

    }

    @Override
    public String visitMyInfo(Model model, Integer pageCur,HttpSession session) {

        List<Visit> allvisit = beforeVisitDao.visitMyInfo(MyUtil.getUserId(session));
        //System.out.println(allanimal);
        int totalcount = allvisit.size();//查询记录数
        //model.addAttribute("totalRecord", totalcount);
        int totalPage = 0;
        if (totalcount == 0) {
            totalPage = 0;
        } else {
            totalPage = (int) Math.ceil((double) totalcount / 8);//函数返回大于或等于一个给定数字的最小整数。每五条记录为一页，计算总页数。
        }
        if (pageCur == null) {//开始时，pageCur为空默认为1，
            pageCur = 1;
        }
        if ((pageCur - 1) * 5 > totalcount) {  //最后一页时，点下一页，防止发生错误
            pageCur = pageCur - 1;
        }
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("startIndex", (pageCur - 1) * 8);
        map.put("perPageSize", 8);
        map.put("vuserid",MyUtil.getUserId(session));
        allvisit = beforeVisitDao.visitMyInfoPage(map);
        model.addAttribute("visitList", allvisit);
        model.addAttribute("totalPage", totalPage);
        model.addAttribute("pageCur", pageCur);
        return "before/animalmyvisit";
    }

    @Override
    public String addVisit(Visit visit, HttpServletRequest request, Model model, HttpSession session) {
        String newFileName = "";
        String fileName = visit.getVisitImage().getOriginalFilename();//获取上传文件的名字

        if(fileName.length() > 0){
            //返回路径是项目根路径
            String realpath = request.getServletContext().getRealPath("/logos");
            System.out.println(realpath);
            String fileType = fileName.substring(fileName.lastIndexOf('.'));
            newFileName = MyUtil.getStringID() + fileType;//修改文件名
            visit.setVpicture(newFileName);

            File targetFile = new File(realpath, newFileName);//把路径封装到file里面，通过file判断是否存在
            //判断文件夹是否存在,不存在则创建
            if(!targetFile.exists()){
                targetFile.mkdirs();
            }
            try {
                visit.getVisitImage().transferTo(targetFile);//将传来的文件存入文件夹 //把内存图片写入磁盘中
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        visit.setVuserid(MyUtil.getUserId(session));
        int n= beforeVisitDao.visitInsert(visit);
        if(n>0) {
            return "admin/useraddok";
        }else {
            model.addAttribute("msg", "fail to insert");
            return "forward:/beforeVisit/toAddVisit";
        }
    }
    @Override
    public String deleteAVisit(Integer id, Model model) {
        int n = beforeVisitDao.deleteAVisit(id);
        if (n > 0) {

            return "forward:/beforeVisit/toMyVisit";

        }else {

            model.addAttribute("msg", "fail to delete Visit "+id);
            return "forward:/beforeVisit/toMyVisit";

        }
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