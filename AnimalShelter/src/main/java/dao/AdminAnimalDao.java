package dao;

import entity.Animal;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository("adminAnimalDao")//保证Dao层能由IOC容器创建
@Mapper
//Spring结合MyBatis的时候，会根据接口，找Mapper文件，然后根据Mapper文件创建实现类，然后根据实现类实例化出对象，然后把对象给Service层用
public interface AdminAnimalDao {


    public List<Animal> animalInfo();
    public List<Animal> animalInfoPage(Map<String, Object> map);
    int animalInsert(Animal animal);
    public Animal toEditAnimal(Integer id);
    public int editAnimal(Animal animal);
    
}
