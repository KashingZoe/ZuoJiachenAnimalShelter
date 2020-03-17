package .service.impl;

import .entity.Auser;
import .dao.AuserDao;
import .service.AuserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Auser)表服务实现类
 *
 * @author makejava
 * @since 2020-03-17 16:07:44
 */
@Service("auserService")
public class AuserServiceImpl implements AuserService {
    @Resource
    private AuserDao auserDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Auser queryById(Integer id) {
        return this.auserDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Auser> queryAllByLimit(int offset, int limit) {
        return this.auserDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param auser 实例对象
     * @return 实例对象
     */
    @Override
    public Auser insert(Auser auser) {
        this.auserDao.insert(auser);
        return auser;
    }

    /**
     * 修改数据
     *
     * @param auser 实例对象
     * @return 实例对象
     */
    @Override
    public Auser update(Auser auser) {
        this.auserDao.update(auser);
        return this.queryById(auser.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.auserDao.deleteById(id) > 0;
    }
}