package entity;

import java.io.Serializable;

/**
 * (Lookmaster)实体类
 *
 * @author makejava
 * @since 2020-03-17 16:54:35
 */
public class Petdetail implements Serializable {
    private static final long serialVersionUID = 829433391052018078L;


    private String kindname;

    private String psex;

    private String pyear;

    private String ptitle;

    private String ptime;

    private String ppicture;

    private String pinfo;

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