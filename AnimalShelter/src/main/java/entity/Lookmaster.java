package entity;

import org.springframework.web.multipart.MultipartFile;

import java.io.Serializable;

/**
 * (Lookmaster)实体类
 *
 * @author makejava
 * @since 2020-03-17 16:54:35
 */
public class Lookmaster implements Serializable {
    private static final long serialVersionUID = 829433391052018078L;
    
    private Integer id;
    
    private Integer kindid;
    
    private String msex;
    
    private String mtitle;
    
    private Integer buserid;
    
    private String mtime;
    
    private String mpicture;
    
    private String minfo;

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

    public String getMsex() {
        return msex;
    }

    public void setMsex(String msex) {
        this.msex = msex;
    }

    public String getMtitle() {
        return mtitle;
    }

    public void setMtitle(String mtitle) {
        this.mtitle = mtitle;
    }

    public Integer getBuserid() {
        return buserid;
    }

    public void setBuserid(Integer buserid) {
        this.buserid = buserid;
    }

    public String getMtime() {
        return mtime;
    }

    public void setMtime(String mtime) {
        this.mtime = mtime;
    }

    public String getMpicture() {
        return mpicture;
    }

    public void setMpicture(String mpicture) {
        this.mpicture = mpicture;
    }

    public String getMinfo() {
        return minfo;
    }

    public void setMinfo(String minfo) {
        this.minfo = minfo;
    }

}