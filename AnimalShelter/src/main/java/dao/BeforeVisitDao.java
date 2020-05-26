package dao;

import entity.Visit;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository("beforeVisitDao")//保证Dao层能由IOC容器创建
@Mapper
//Spring结合MyBatis的时候，会根据接口，找Mapper文件，然后根据Mapper文件创建实现类，然后根据实现类实例化出对象，然后把对象给Service层用
public interface BeforeVisitDao {

      public List<Visit> visitInfo();
      public List<Visit> visitInfoPage(Map<String, Object> map);
      public List<Visit> visitMyInfo(Integer vuserid);
      public List<Visit> visitMyInfoPage(Map<String, Object> map);
//    public List<Animal> animalLimit();
//    public List<Animal> animalPage(Map<String, Object> map);
//    public Animal selectAAnimal(Integer id);
      int visitInsert(Visit visit);
//    public Animal toEditAnimal(Integer id);
//    public int editAnimal(Animal animal);
      public int deleteAVisit(Integer id);
}
