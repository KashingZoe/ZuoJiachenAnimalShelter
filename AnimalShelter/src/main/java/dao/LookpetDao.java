package dao;

import entity.Lookpet;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (Lookpet)表数据库访问层
 *
 * @author makejava
 * @since 2020-03-17 16:58:27
 */
public interface LookpetDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Lookpet queryById(Integer id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Lookpet> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param lookpet 实例对象
     * @return 对象列表
     */
    List<Lookpet> queryAll(Lookpet lookpet);

    /**
     * 新增数据
     *
     * @param lookpet 实例对象
     * @return 影响行数
     */
    int insert(Lookpet lookpet);

    /**
     * 修改数据
     *
     * @param lookpet 实例对象
     * @return 影响行数
     */
    int update(Lookpet lookpet);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

}