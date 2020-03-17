package entity;

import java.io.Serializable;

/**
 * (Animalkind)实体类
 *
 * @author makejava
 * @since 2020-03-17 16:41:06
 */
public class Animalkind implements Serializable {
    private static final long serialVersionUID = -88778272155388902L;
    
    private Integer id;
    
    private String kindname;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getKindname() {
        return kindname;
    }

    public void setKindname(String kindname) {
        this.kindname = kindname;
    }

}