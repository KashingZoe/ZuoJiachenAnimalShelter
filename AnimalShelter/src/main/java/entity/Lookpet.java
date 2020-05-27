package entity;

import org.springframework.web.multipart.MultipartFile;

import java.io.Serializable;

/**
 * (Lookpet)实体类
 *
 * @author makejava
 * @since 2020-03-17 16:58:27
 */
public class Lookpet implements Serializable {
    private static final long serialVersionUID = 642355383077254440L;
    
    private Integer id;
    
    private Integer kindid;
    
    private String psex;
    
    private String pyear;
    
    private String ptitle;
    
    private Integer buserid;
    
    private String ptime;
    
    private String ppicture;
    
    private String pinfo;

    private MultipartFile logoImage;

    public MultipartFile getLogoImage() {
        return logoImage;
    }

    public void setLogoImage(MultipartFile logoImage) {
        this.logoImage = logoImage;
    }

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

    public String getPsex() {
        return psex;
    }

    public void setPsex(String psex) {
        this.psex = psex;
    }

    public String getPyear() {
        return pyear;
    }

    public void setPyear(String pyear) {
        this.pyear = pyear;
    }

    public String getPtitle() {
        return ptitle;
    }

    public void setPtitle(String ptitle) {
        this.ptitle = ptitle;
    }

    public Integer getBuserid() {
        return buserid;
    }

    public void setBuserid(Integer buserid) {
        this.buserid = buserid;
    }

    public String getPtime() {
        return ptime;
    }

    public void setPtime(String ptime) {
        this.ptime = ptime;
    }

    public String getPpicture() {
        return ppicture;
    }

    public void setPpicture(String ppicture) {
        this.ppicture = ppicture;
    }

    public String getPinfo() {
        return pinfo;
    }

    public void setPinfo(String pinfo) {
        this.pinfo = pinfo;
    }

}