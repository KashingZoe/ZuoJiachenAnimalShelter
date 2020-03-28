package dao;

import entity.Auser;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (Auser)表数据库访问层
 *
 * @author makejava
 * @since 2020-03-17 16:07:37
 */
public interface AuserDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Auser queryById(Integer id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Auser> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param auser 实例对象
     * @return 对象列表
     */
    List<Auser> queryAll(Auser auser);

    /**
     * 新增数据
     *
     * @param auser 实例对象
     * @return 影响行数
     */
    int insert(Auser auser);

    /**
     * 修改数据
     *
     * @param auser 实例对象
     * @return 影响行数
     */
    int update(Auser auser);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

}