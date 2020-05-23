package entity;

import org.springframework.web.multipart.MultipartFile;

import java.io.Serializable;

/**
 * (Animal)实体类
 *
 * @author makejava
 * @since 2020-03-17 16:43:02
 */
public class Animal implements Serializable {
    private static final long serialVersionUID = -50625821887464682L;
    
    private Integer id;
    
    private Integer kindid;

    private String kindname;
    
    private String lsex;
    
    private String ltitle;
    
    private String lyear;
    
    private Integer buserid;
    
    private String lbirth;
    
    private String lval;
    
    private String lbug;

    private MultipartFile logoImage;
    
    private String lpicture;
    
    private String linfo;
    
    private String ltime;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getKindid() {
        return kindid;
    }

    public void setKindid(Integer kindid) {
        this.kindid = kindid;
    }

    public String getLsex() {
        return lsex;
    }

    public void setLsex(String lsex) {
        this.lsex = lsex;
    }

    public String getLtitle() {
        return ltitle;
    }

    public void setLtitle(String ltitle) {
        this.ltitle = ltitle;
    }

    public String getLyear() {
        return lyear;
    }

    public void setLyear(String lyear) {
        this.lyear = lyear;
    }

    public Integer getBuserid() {
        return buserid;
    }

    public void setBuserid(Integer buserid) {
        this.buserid = buserid;
    }

    public String getLbirth() {
        return lbirth;
    }

    public void setLbirth(String lbirth) {
        this.lbirth = lbirth;
    }

    public String getLval() {
        return lval;
    }

    public void setLval(String lval) {
        this.lval = lval;
    }

    public String getLbug() {
        return lbug;
    }

    public void setLbug(String lbug) {
        this.lbug = lbug;
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

    public String getLtime() {
        return ltime;
    }

    public void setLtime(String ltime) {
        this.ltime = ltime;
    }
    //种类
    public String getKindname() {
        return kindname;
    }

    public void setKindname(String kindname) {
        this.kindname = kindname;
    }

}