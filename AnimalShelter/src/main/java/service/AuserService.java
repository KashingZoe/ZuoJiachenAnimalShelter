package service;

import entity.Auser;
import java.util.List;

/**
 * (Auser)表服务接口
 *
 * @author makejava
 * @since 2020-03-17 16:07:42
 */
public interface AuserService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Auser queryById(Integer id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Auser> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param auser 实例对象
     * @return 实例对象
     */
    Auser insert(Auser auser);

    /**
     * 修改数据
     *
     * @param auser 实例对象
     * @return 实例对象
     */
    Auser update(Auser auser);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

}