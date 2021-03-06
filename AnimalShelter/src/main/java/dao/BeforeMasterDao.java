package dao;

import entity.Lookmaster;
import entity.Masterdetail;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository("beforeMasterDao")//保证Dao层能由IOC容器创建
@Mapper
//Spring结合MyBatis的时候，会根据接口，找Mapper文件，然后根据Mapper文件创建实现类，然后根据实现类实例化出对象，然后把对象给Service层用
public interface BeforeMasterDao {

    //Index
    public List<Lookmaster> masterLimit();
    public List<Lookmaster> masterInfo();
    public List<Lookmaster> masterInfoPage(Map<String, Object> map);

    public Masterdetail selectAMaster(Integer id);

    //userIndex
    public List<Lookmaster> masterFive(Integer buserid);
    public List<Lookmaster> masterAll(Integer buserid);

    public List<Lookmaster> masterIndexPage(Map<String, Object> map);

    public Lookmaster userMasterIndex(Integer id);

    public int deleteAUserMaster(Integer id);







    //public List<Animal> animalInfo();
    //public List<Animal> animalInfoPage(Map<String, Object> map);
    //public Animal selectAAnimal(Integer id);
    //int animalInsert(Animal animal);
    //int masterInsert(Lookmaster lookmaster);
    //int petInsert(Lookpet lookpet);
//    public Animal toEditAnimal(Integer id);
//    public int editAnimal(Animal animal);
//    public int deleteAAnimal(Integer id);

}
