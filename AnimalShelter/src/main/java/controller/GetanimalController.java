package .controller;

import .entity.Getanimal;
import .service.GetanimalService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Getanimal)表控制层
 *
 * @author makejava
 * @since 2020-03-17 17:11:44
 */
@RestController
@RequestMapping("getanimal")
public class GetanimalController {
    /**
     * 服务对象
     */
    @Resource
    private GetanimalService getanimalService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Getanimal selectOne(Integer id) {
        return this.getanimalService.queryById(id);
    }

}