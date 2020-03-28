package service.impl;

import entity.Lookpet;
import dao.LookpetDao;
import service.LookpetService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Lookpet)表服务实现类
 *
 * @author makejava
 * @since 2020-03-17 16:58:27
 */
@Service("lookpetService")
public class LookpetServiceImpl implements LookpetService {
    @Resource
    private LookpetDao lookpetDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Lookpet queryById(Integer id) {
        return this.lookpetDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Lookpet> queryAllByLimit(int offset, int limit) {
        return this.lookpetDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param lookpet 实例对象
     * @return 实例对象
     */
    @Override
    public Lookpet insert(Lookpet lookpet) {
        this.lookpetDao.insert(lookpet);
        return lookpet;
    }

    /**
     * 修改数据
     *
     * @param lookpet 实例对象
     * @return 实例对象
     */
    @Override
    public Lookpet update(Lookpet lookpet) {
        this.lookpetDao.update(lookpet);
        return this.queryById(lookpet.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.lookpetDao.deleteById(id) > 0;
    }
}