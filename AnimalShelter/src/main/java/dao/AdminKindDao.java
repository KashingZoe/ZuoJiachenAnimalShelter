package dao;
import entity.Animalkind;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.bind.annotation.RequestMapping;

import	java.util.List;
@RequestMapping("adminKindDao")
@Mapper
public interface AdminKindDao {

    public List<Animalkind> kindInfo();
    int kindInsert(Animalkind animalkind);
    int deleteAKind(Integer id);

}
