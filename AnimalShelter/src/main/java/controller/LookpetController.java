package controller;

import entity.Lookpet;
import service.LookpetService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Lookpet)表控制层
 *
 * @author makejava
 * @since 2020-03-17 16:58:27
 */
@RestController
@RequestMapping("lookpet")
public class LookpetController {
    /**
     * 服务对象
     */
    @Resource
    private LookpetService lookpetService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Lookpet selectOne(Integer id) {
        return this.lookpetService.queryById(id);
    }

}