package dao;

import entity.Lookmaster;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (Lookmaster)表数据库访问层
 *
 * @author makejava
 * @since 2020-03-17 16:54:35
 */
public interface LookmasterDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Lookmaster queryById(Integer id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Lookmaster> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param lookmaster 实例对象
     * @return 对象列表
     */
    List<Lookmaster> queryAll(Lookmaster lookmaster);

    /**
     * 新增数据
     *
     * @param lookmaster 实例对象
     * @return 影响行数
     */
    int insert(Lookmaster lookmaster);

    /**
     * 修改数据
     *
     * @param lookmaster 实例对象
     * @return 影响行数
     */
    int update(Lookmaster lookmaster);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

}