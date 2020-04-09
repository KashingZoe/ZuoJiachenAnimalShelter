package service.impl;

import dao.BuserDao;
import entity.Buser;
import service.BuserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Buser)表服务实现类
 *
 * @author makejava
 * @since 2020-03-17 16:32:54
 */
@Service("buserService")
public class BuserServiceImpl implements BuserService {
    @Resource
    private BuserDao buserDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Buser queryById(Integer id) {
        return this.buserDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Buser> queryAllByLimit(int offset, int limit) {
        return this.buserDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param buser 实例对象
     * @return 实例对象
     */
    @Override
    public Buser insert(Buser buser) {
        this.buserDao.insert(buser);
        return buser;
    }

    /**
     * 修改数据
     *
     * @param buser 实例对象
     * @return 实例对象
     */
    @Override
    public Buser update(Buser buser) {
        this.buserDao.update(buser);
        return this.queryById(buser.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.buserDao.deleteById(id) > 0;
    }
}