package dao;

import entity.News;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository("beforeNewsDao")//保证Dao层能由IOC容器创建
@Mapper
//Spring结合MyBatis的时候，会根据接口，找Mapper文件，然后根据Mapper文件创建实现类，然后根据实现类实例化出对象，然后把对象给Service层用
public interface BeforeNewsDao {


    public List<News> newsLimit();
    public List<News> newsEight();
    public List<News> newsAll();
    public List<News> newsInfo(Map<String, Object> map);
    public List<News> newsInfoPage(Map<String, Object> map);
    public News selectANews(Integer id);


}
