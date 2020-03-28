package service;

import entity.Lookpet;
import java.util.List;

/**
 * (Lookpet)表服务接口
 *
 * @author makejava
 * @since 2020-03-17 16:58:27
 */
public interface LookpetService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Lookpet queryById(Integer id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Lookpet> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param lookpet 实例对象
     * @return 实例对象
     */
    Lookpet insert(Lookpet lookpet);

    /**
     * 修改数据
     *
     * @param lookpet 实例对象
     * @return 实例对象
     */
    Lookpet update(Lookpet lookpet);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

}