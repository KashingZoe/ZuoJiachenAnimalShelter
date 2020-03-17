package .service;

import .entity.Lookmaster;
import java.util.List;

/**
 * (Lookmaster)表服务接口
 *
 * @author makejava
 * @since 2020-03-17 16:54:35
 */
public interface LookmasterService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Lookmaster queryById(Integer id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Lookmaster> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param lookmaster 实例对象
     * @return 实例对象
     */
    Lookmaster insert(Lookmaster lookmaster);

    /**
     * 修改数据
     *
     * @param lookmaster 实例对象
     * @return 实例对象
     */
    Lookmaster update(Lookmaster lookmaster);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

}