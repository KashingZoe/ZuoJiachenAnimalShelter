package .controller;

import .entity.Lookmaster;
import .service.LookmasterService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Lookmaster)表控制层
 *
 * @author makejava
 * @since 2020-03-17 16:54:35
 */
@RestController
@RequestMapping("lookmaster")
public class LookmasterController {
    /**
     * 服务对象
     */
    @Resource
    private LookmasterService lookmasterService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Lookmaster selectOne(Integer id) {
        return this.lookmasterService.queryById(id);
    }

}