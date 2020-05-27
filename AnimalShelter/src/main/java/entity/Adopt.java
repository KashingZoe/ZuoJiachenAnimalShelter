package entity;

import org.springframework.web.multipart.MultipartFile;

import java.io.Serializable;

/**
 * (Animal)实体类
 *
 * @author makejava
 * @since 2020-03-17 16:43:02
 */
public class Adopt implements Serializable {
    private static final long serialVersionUID = -50625821887464682L;



    private Integer id;

    private Integer status;

    private String ltitle;

    private MultipartFile logoImage;
    
    private String lpicture;
    
    private String linfo;

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

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getLtitle() {
        return ltitle;
    }

    public void setLtitle(String ltitle) {
        this.ltitle = ltitle;
    }

    public MultipartFile getLogoImage() {
        return logoImage;
    }

    public void setLogoImage(MultipartFile logoImage) {
        this.logoImage = logoImage;
    }

    public String getLpicture() {
        return lpicture;
    }

    public void setLpicture(String lpicture) {
        this.lpicture = lpicture;
    }

    public String getLinfo() {
        return linfo;
    }

    public void setLinfo(String linfo) {
        this.linfo = linfo;
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