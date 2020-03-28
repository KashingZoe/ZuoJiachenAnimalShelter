package service.impl;

import entity.Lookmaster;
import dao.LookmasterDao;
import service.LookmasterService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Lookmaster)表服务实现类
 *
 * @author makejava
 * @since 2020-03-17 16:54:35
 */
@Service("lookmasterService")
public class LookmasterServiceImpl implements LookmasterService {
    @Resource
    private LookmasterDao lookmasterDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Lookmaster queryById(Integer id) {
        return this.lookmasterDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Lookmaster> queryAllByLimit(int offset, int limit) {
        return this.lookmasterDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param lookmaster 实例对象
     * @return 实例对象
     */
    @Override
    public Lookmaster insert(Lookmaster lookmaster) {
        this.lookmasterDao.insert(lookmaster);
        return lookmaster;
    }

    /**
     * 修改数据
     *
     * @param lookmaster 实例对象
     * @return 实例对象
     */
    @Override
    public Lookmaster update(Lookmaster lookmaster) {
        this.lookmasterDao.update(lookmaster);
        return this.queryById(lookmaster.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.lookmasterDao.deleteById(id) > 0;
    }
}