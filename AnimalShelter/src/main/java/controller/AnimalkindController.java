package controller;

import entity.Animalkind;
import service.AnimalkindService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Animalkind)表控制层
 *
 * @author makejava
 * @since 2020-03-17 16:41:07
 */
@RestController
@RequestMapping("animalkind")
public class AnimalkindController {
    /**
     * 服务对象
     */
    @Resource
    private AnimalkindService animalkindService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Animalkind selectOne(Integer id) {
        return this.animalkindService.queryById(id);
    }

}