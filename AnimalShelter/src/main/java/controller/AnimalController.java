package controller;

import entity.Animal;
import service.AnimalService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Animal)表控制层
 *
 * @author makejava
 * @since 2020-03-17 16:43:02
 */
@RestController
@RequestMapping("animal")
public class AnimalController {
    /**
     * 服务对象
     */
    @Resource
    private AnimalService animalService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Animal selectOne(Integer id) {
        return this.animalService.queryById(id);
    }

}