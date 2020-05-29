package entity;

import org.springframework.web.multipart.MultipartFile;

import java.io.Serializable;

/**
 * (Lookmaster)实体类
 *
 * @author makejava
 * @since 2020-03-17 16:54:35
 */
public class Masterdetail implements Serializable {
    private static final long serialVersionUID = 829433391052018078L;



    private String kindname;

    private String msex;

    private String mtitle;

    private String mtime;

    private String mpicture;

    private String minfo;

    private MultipartFile logoImage;

    private String bname;

    private String bqq;

    private String bwechat;

    private String btel;

    public String getKindname() {
        return kindname;
    }

    public void setKindname(String kindname) {
        this.kindname = kindname;
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

    public MultipartFile getLogoImage() {
        return logoImage;
    }

    public void setLogoImage(MultipartFile logoImage) {
        this.logoImage = logoImage;
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





}