package dao;

import entity.Buser;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository("adminUserDao")
@Mapper
public interface AdminUserDao {
    public List<Buser> userInfo();
    public List<Buser> selectAUser(Buser buser);
    public Buser toEditUser(Integer id);
    public int editUser(Buser buser);
    public int deleteuserManager(Integer id);
}
