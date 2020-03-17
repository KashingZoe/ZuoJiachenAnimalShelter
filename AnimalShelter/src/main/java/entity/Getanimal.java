package entity;

import java.util.Date;
import java.io.Serializable;

/**
 * (Getanimal)实体类
 *
 * @author makejava
 * @since 2020-03-17 17:11:44
 */
public class Getanimal implements Serializable {
    private static final long serialVersionUID = -10189682820973382L;
    
    private Integer id;
    
    private Integer buserid;
    
    private String ghome;
    
    private String gchildren;
    
    private String gmarried;
    
    private Integer status;
    
    private Date orderdate;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getBuserid() {
        return buserid;
    }

    public void setBuserid(Integer buserid) {
        this.buserid = buserid;
    }

    public String getGhome() {
        return ghome;
    }

    public void setGhome(String ghome) {
        this.ghome = ghome;
    }

    public String getGchildren() {
        return gchildren;
    }

    public void setGchildren(String gchildren) {
        this.gchildren = gchildren;
    }

    public String getGmarried() {
        return gmarried;
    }

    public void setGmarried(String gmarried) {
        this.gmarried = gmarried;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getOrderdate() {
        return orderdate;
    }

    public void setOrderdate(Date orderdate) {
        this.orderdate = orderdate;
    }

}