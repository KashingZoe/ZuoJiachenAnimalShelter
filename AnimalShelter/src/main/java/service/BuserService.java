package .service;

import .entity.Buser;
import java.util.List;

/**
 * (Buser)表服务接口
 *
 * @author makejava
 * @since 2020-03-17 16:32:54
 */
public interface BuserService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Buser queryById(Integer id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Buser> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param buser 实例对象
     * @return 实例对象
     */
    Buser insert(Buser buser);

    /**
     * 修改数据
     *
     * @param buser 实例对象
     * @return 实例对象
     */
    Buser update(Buser buser);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

}