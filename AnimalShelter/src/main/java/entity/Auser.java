package entity;

import java.io.Serializable;

/**
 * (Auser)实体类
 *
 * @author makejava
 * @since 2020-03-17 16:41:34
 */
public class Auser implements Serializable {
    private static final long serialVersionUID = -25220806665177753L;
    
    private Integer id;
    
    private String aname;
    
    private String apwd;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getApwd() {
        return apwd;
    }

    public void setApwd(String apwd) {
        this.apwd = apwd;
    }

}