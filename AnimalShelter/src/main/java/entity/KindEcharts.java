package entity;

import java.io.Serializable;

/**
 * (Auser)实体类
 *
 * @author makejava
 * @since 2020-03-17 16:41:34
 */
public class KindEcharts implements Serializable {
    //private static final long serialVersionUID = -25220806665177753L;
    
    //private Integer id;
    
    private String kindname;
    private int kindcount;



    public String getKindname() {
        return kindname;
    }

    public void setKindname(String kindname) {
        this.kindname = kindname;
    }

    public int getKindcount() {
        return kindcount;
    }

    public void setKindcount(int kindcount) {
        this.kindcount = kindcount;
    }




}