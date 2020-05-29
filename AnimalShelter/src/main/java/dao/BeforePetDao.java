package dao;

import entity.Lookpet;
import entity.Petdetail;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository("beforePetDao")//保证Dao层能由IOC容器创建
@Mapper
//Spring结合MyBatis的时候，会根据接口，找Mapper文件，然后根据Mapper文件创建实现类，然后根据实现类实例化出对象，然后把对象给Service层用
public interface BeforePetDao {


    public List<Lookpet> petLimit();
    public List<Lookpet> petInfo();
    public List<Lookpet> petInfoPage(Map<String, Object> map);
    public Petdetail selectAPet(Integer id);

    //userIndex
    public List<Lookpet> petFive(Integer buserid);
    public List<Lookpet> petAll(Integer buserid);
    public List<Lookpet> petIndexPage(Map<String, Object> map);
    public Lookpet userPetIndex(Integer id);

    public int deleteAUserPet(Integer id);


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
