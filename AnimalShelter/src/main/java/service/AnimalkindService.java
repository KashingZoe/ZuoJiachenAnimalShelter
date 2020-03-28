package service;

import entity.Animalkind;
import java.util.List;

/**
 * (Animalkind)表服务接口
 *
 * @author makejava
 * @since 2020-03-17 16:41:07
 */
public interface AnimalkindService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Animalkind queryById(Integer id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Animalkind> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param animalkind 实例对象
     * @return 实例对象
     */
    Animalkind insert(Animalkind animalkind);

    /**
     * 修改数据
     *
     * @param animalkind 实例对象
     * @return 实例对象
     */
    Animalkind update(Animalkind animalkind);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

}