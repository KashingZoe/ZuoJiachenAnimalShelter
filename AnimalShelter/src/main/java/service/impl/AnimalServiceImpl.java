package service.impl;

import entity.Animal;
import dao.AnimalDao;
import service.AnimalService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Animal)表服务实现类
 *
 * @author makejava
 * @since 2020-03-17 16:43:02
 */
@Service("animalService")
public class AnimalServiceImpl implements AnimalService {
    @Resource
    private AnimalDao animalDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Animal queryById(Integer id) {
        return this.animalDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Animal> queryAllByLimit(int offset, int limit) {
        return this.animalDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param animal 实例对象
     * @return 实例对象
     */
    @Override
    public Animal insert(Animal animal) {
        this.animalDao.insert(animal);
        return animal;
    }

    /**
     * 修改数据
     *
     * @param animal 实例对象
     * @return 实例对象
     */
    @Override
    public Animal update(Animal animal) {
        this.animalDao.update(animal);
        return this.queryById(animal.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.animalDao.deleteById(id) > 0;
    }
}