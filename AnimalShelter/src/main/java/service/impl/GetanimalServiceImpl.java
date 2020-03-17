package .service.impl;

import .entity.Getanimal;
import .dao.GetanimalDao;
import .service.GetanimalService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Getanimal)表服务实现类
 *
 * @author makejava
 * @since 2020-03-17 17:11:44
 */
@Service("getanimalService")
public class GetanimalServiceImpl implements GetanimalService {
    @Resource
    private GetanimalDao getanimalDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Getanimal queryById(Integer id) {
        return this.getanimalDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Getanimal> queryAllByLimit(int offset, int limit) {
        return this.getanimalDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param getanimal 实例对象
     * @return 实例对象
     */
    @Override
    public Getanimal insert(Getanimal getanimal) {
        this.getanimalDao.insert(getanimal);
        return getanimal;
    }

    /**
     * 修改数据
     *
     * @param getanimal 实例对象
     * @return 实例对象
     */
    @Override
    public Getanimal update(Getanimal getanimal) {
        this.getanimalDao.update(getanimal);
        return this.queryById(getanimal.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.getanimalDao.deleteById(id) > 0;
    }
}