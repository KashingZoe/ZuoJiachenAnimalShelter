package .service.impl;

import .entity.Animalkind;
import .dao.AnimalkindDao;
import .service.AnimalkindService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Animalkind)表服务实现类
 *
 * @author makejava
 * @since 2020-03-17 16:41:07
 */
@Service("animalkindService")
public class AnimalkindServiceImpl implements AnimalkindService {
    @Resource
    private AnimalkindDao animalkindDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Animalkind queryById(Integer id) {
        return this.animalkindDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Animalkind> queryAllByLimit(int offset, int limit) {
        return this.animalkindDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param animalkind 实例对象
     * @return 实例对象
     */
    @Override
    public Animalkind insert(Animalkind animalkind) {
        this.animalkindDao.insert(animalkind);
        return animalkind;
    }

    /**
     * 修改数据
     *
     * @param animalkind 实例对象
     * @return 实例对象
     */
    @Override
    public Animalkind update(Animalkind animalkind) {
        this.animalkindDao.update(animalkind);
        return this.queryById(animalkind.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.animalkindDao.deleteById(id) > 0;
    }
}