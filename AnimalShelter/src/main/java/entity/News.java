package entity;

import java.util.Date;
import java.io.Serializable;

/**
 * (News)实体类
 *
 * @author makejava
 * @since 2020-03-17 17:15:23
 */
public class News implements Serializable {
    private static final long serialVersionUID = -14749181519111942L;
    
    private Integer id;
    
    private String ntitle;
    
    private String ncontent;
    
    private Date ntime;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNtitle() {
        return ntitle;
    }

    public void setNtitle(String ntitle) {
        this.ntitle = ntitle;
    }

    public String getNcontent() {
        return ncontent;
    }

    public void setNcontent(String ncontent) {
        this.ncontent = ncontent;
    }

    public Date getNtime() {
        return ntime;
    }

    public void setNtime(Date ntime) {
        this.ntime = ntime;
    }

}