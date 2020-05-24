package service.before;

import dao.BeforeOrderDao;
import entity.Getanimal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import util.MyUtil;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;


@Service("beforeOrderService")
@Transactional
public class BeforeOrderServiceImpl implements BeforeOrderService {

    @Autowired
    private BeforeOrderDao beforeOrderDao;

    //
    @Override
    public String addOrder(Getanimal getanimal, HttpSession session, Model model,Integer aid) {

        Getanimal getanimal1 = new Getanimal();
        getanimal1 = getanimal;
        getanimal1.setBuserid(MyUtil.getUserId(session));//获取登录用户信息
        int n = beforeOrderDao.addOrder(getanimal1);
        Map<String, Object> map = new HashMap<String, Object>();//存储不同类型的数据，因为订单详情表没有对应的实体化类
        map.put("getanimalid", getanimal1.getId());//在订单详情表插入订单基础表的订单编号
        //System.out.println(aid);
        map.put("animalid", session.getAttribute("animalid"));//再获取动物id
        int l = beforeOrderDao.addOrderDetail(map);//插入订单详情
        if(n>0 && l>0) {
            return "before/addorderok";
        }else {
            model.addAttribute("msg", "fail to insert");
            return "before/addorderfail";
        }

    }


//    //后台查询所有用户
//    @Override
//    public String orderInfo(Model model, Integer pageCur) {
//
//        List<Getanimal> allorder = adminOrderDao.orderInfo();
//        int totalcount = allorder.size();//查询记录数
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
//        allorder = adminOrderDao.orderInfoPage(map);
//        model.addAttribute("orderList", allorder);
//        model.addAttribute("totalPage", totalPage);
//        model.addAttribute("pageCur", pageCur);
//        return "admin/orderlist";
//
//    }
//
//    @Override
//    public String toEditOrder(Model model, Integer id) {
//        Getanimal oneorder = adminOrderDao.toEditOrder(id);
//        model.addAttribute("getanimal",oneorder);
//        return "admin/orderedit";
//    }
//
//    @Override
//    public String editOrder(Getanimal getanimal, Model model) {
//        int n = adminOrderDao.editOrder(getanimal);
//        if(n>0) {
//            return "admin/usereditok";
//
//        }else {
//            model.addAttribute("msg", "fail to update");
//            return "forward:/adminOrder/toEditOrder";
//        }
//    }
//
//    @Override
//    public String toDeleteOrder(Model model, Integer pageCur) {
//        List<Getanimal> allorder = adminOrderDao.orderInfo();
//        int totalcount = allorder.size();//查询记录数
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
//        allorder = adminOrderDao.orderInfoPage(map);
//        model.addAttribute("orderList", allorder);
//        model.addAttribute("totalPage", totalPage);
//        model.addAttribute("pageCur", pageCur);
//        return "admin/orderdelete";
//    }
//
//    @Override
//    public String deleteAOrder(Integer id, Model model) {
//        int n = adminOrderDao.deleteAOrder(id);
//        if (n > 0) {
//
//            return "forward:/adminOrder/toDeleteOrder";
//
//        }else {
//
//            model.addAttribute("msg", "fail to delete Order "+id);
//            return "forward:/adminOrder/toDeleteOrder";
//
//        }
//    }
//
//    @Override
//    public String delSelectAOrder(Getanimal getanimal, Model model, Integer pageCur) {
//        List<Getanimal> allorder = adminOrderDao.selectAOrder(getanimal);
//        int totalcount = allorder.size();//查询记录数
//        model.addAttribute("totalRecord", totalcount);
//        model.addAttribute("orderList", allorder);
//        int totalPage = 1;
//        if (pageCur == null) {
//            pageCur = 1;
//        }
//        model.addAttribute("totalPage", totalPage);
//        model.addAttribute("pageCur", pageCur);
//        return "admin/orderdelete";
//    }
//
//    @Override
//    public String selectAOrder(Getanimal getanimal, Model model, Integer pageCur) {
//        List<Getanimal> allorder = adminOrderDao.selectAOrder(getanimal);
//        int totalcount = allorder.size();//查询记录数
//        model.addAttribute("totalRecord", totalcount);
//        model.addAttribute("orderList", allorder);
//        int totalPage = 1;
//        if (pageCur == null) {
//            pageCur = 1;
//        }
//        model.addAttribute("totalPage", totalPage);
//        model.addAttribute("pageCur", pageCur);
//        return "admin/orderlist";
//    }

}