package .service;

import .entity.Animal;
import java.util.List;

/**
 * (Animal)表服务接口
 *
 * @author makejava
 * @since 2020-03-17 16:43:02
 */
public interface AnimalService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Animal queryById(Integer id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Animal> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param animal 实例对象
     * @return 实例对象
     */
    Animal insert(Animal animal);

    /**
     * 修改数据
     *
     * @param animal 实例对象
     * @return 实例对象
     */
    Animal update(Animal animal);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

}