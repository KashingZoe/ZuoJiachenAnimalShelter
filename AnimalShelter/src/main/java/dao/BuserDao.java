package dao;

import entity.Buser;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * (Buser)表数据库访问层
 *
 * @author makejava
 * @since 2020-03-17 16:32:54
 */
@Repository("buserDao")
@Mapper
public interface BuserDao {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Buser queryById(Integer id);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Buser> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param buser 实例对象
     * @return 对象列表
     */
    List<Buser> queryAll(Buser buser);

    /**
     * 新增数据
     *
     * @param buser 实例对象
     * @return 影响行数
     */
    int insert(Buser buser);

    /**
     * 修改数据
     *
     * @param buser 实例对象
     * @return 影响行数
     */
    int update(Buser buser);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 影响行数
     */
    int deleteById(Integer id);

}