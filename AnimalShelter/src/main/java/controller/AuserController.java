package .controller;

import .entity.Auser;
import .service.AuserService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Auser)表控制层
 *
 * @author makejava
 * @since 2020-03-17 16:07:45
 */
@RestController
@RequestMapping("auser")
public class AuserController {
    /**
     * 服务对象
     */
    @Resource
    private AuserService auserService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Auser selectOne(Integer id) {
        return this.auserService.queryById(id);
    }

}