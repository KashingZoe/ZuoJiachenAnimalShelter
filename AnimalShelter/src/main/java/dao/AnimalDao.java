package .dao;

import .entity.Animal;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (Animal)表数据库访问层
 *
 * @author makejava
 * @since 2020-03-17 16:43:02
 */
public interface AnimalDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Animal queryById(Integer id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Animal> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param animal 实例对象
     * @return 对象列表
     */
    List<Animal> queryAll(Animal animal);

    /**
     * 新增数据
     *
     * @param animal 实例对象
     * @return 影响行数
     */
    int insert(Animal animal);

    /**
     * 修改数据
     *
     * @param animal 实例对象
     * @return 影响行数
     */
    int update(Animal animal);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

}