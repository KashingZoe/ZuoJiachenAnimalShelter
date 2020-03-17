package entity;

import java.io.Serializable;

/**
 * (Buser)实体类
 *
 * @author makejava
 * @since 2020-03-17 16:41:39
 */
public class Buser implements Serializable {
    private static final long serialVersionUID = 862380961369728287L;
    
    private Integer id;
    
    private String bemail;
    
    private String bpwd;
    
    private String bname;
    
    private String bqq;
    
    private String bwechat;
    
    private String btel;
    
    private String barea;
    
    private String badd;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBemail() {
        return bemail;
    }

    public void setBemail(String bemail) {
        this.bemail = bemail;
    }

    public String getBpwd() {
        return bpwd;
    }

    public void setBpwd(String bpwd) {
        this.bpwd = bpwd;
    }

    public String getBname() {
        return bname;
    }

    public void setBname(String bname) {
        this.bname = bname;
    }

    public String getBqq() {
        return bqq;
    }

    public void setBqq(String bqq) {
        this.bqq = bqq;
    }

    public String getBwechat() {
        return bwechat;
    }

    public void setBwechat(String bwechat) {
        this.bwechat = bwechat;
    }

    public String getBtel() {
        return btel;
    }

    public void setBtel(String btel) {
        this.btel = btel;
    }

    public String getBarea() {
        return barea;
    }

    public void setBarea(String barea) {
        this.barea = barea;
    }

    public String getBadd() {
        return badd;
    }

    public void setBadd(String badd) {
        this.badd = badd;
    }

}