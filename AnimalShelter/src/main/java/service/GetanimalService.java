package .service;

import .entity.Getanimal;
import java.util.List;

/**
 * (Getanimal)表服务接口
 *
 * @author makejava
 * @since 2020-03-17 17:11:44
 */
public interface GetanimalService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Getanimal queryById(Integer id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Getanimal> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param getanimal 实例对象
     * @return 实例对象
     */
    Getanimal insert(Getanimal getanimal);

    /**
     * 修改数据
     *
     * @param getanimal 实例对象
     * @return 实例对象
     */
    Getanimal update(Getanimal getanimal);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

}