package .controller;

import .entity.Buser;
import .service.BuserService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Buser)表控制层
 *
 * @author makejava
 * @since 2020-03-17 16:32:54
 */
@RestController
@RequestMapping("buser")
public class BuserController {
    /**
     * 服务对象
     */
    @Resource
    private BuserService buserService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Buser selectOne(Integer id) {
        return this.buserService.queryById(id);
    }

}