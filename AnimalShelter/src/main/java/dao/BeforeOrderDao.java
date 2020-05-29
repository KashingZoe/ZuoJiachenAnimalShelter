package dao;

import entity.Adopt;
import entity.Getanimal;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository("beforeOrderDao")//保证Dao层能由IOC容器创建
@Mapper
//Spring结合MyBatis的时候，会根据接口，找Mapper文件，然后根据Mapper文件创建实现类，然后根据实现类实例化出对象，然后把对象给Service层用
public interface BeforeOrderDao {


    //public List<Getanimal> orderInfo();
    //public List<Getanimal> orderInfoPage(Map<String, Object> map);
    //public List<Getanimal> selectAOrder(Getanimal getanimal);
    int addOrder(Getanimal getanimal);
    int addOrderDetail(Map<String, Object> map);
    //public Getanimal toEditOrder(Integer id);
    //public int editOrder(Getanimal getanimal);
   // public int deleteAOrder(Integer id);

    //userindex
    public List<Adopt> selectAllOrder(Integer buserid);

    public List<Adopt> selectFiveOrder(Integer buserid);
    public List<Adopt> allInfoPage(Map<String,Object> map);
    public Adopt userIndex(Integer id);
}
