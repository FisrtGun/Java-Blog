package com.firstgun.entity;

import java.io.Serializable;

/**
 *  @version 1.0
 *  @author  lizihao
 */
public class Front implements Serializable{

    private  int fid;
    //标题
    private  String ftitle;
    //阅读量
    private   String  fnum;
    //作者
    private  String fauthor;
   //日期
    private   String  ftime;
    //评论
    private   String  fcomment;


    public int getFid() {
        return fid;
    }

    public String getFtitle() {
        return ftitle;
    }

    public String getFnum() {
        return fnum;
    }

    public String getFauthor() {
        return fauthor;
    }

    public String getFtime() {
        return ftime;
    }

    public String getFcomment() {
        return fcomment;
    }

    public void setFid(int fid) {
        this.fid = fid;
    }

    public void setFtitle(String ftitle) {
        this.ftitle = ftitle;
    }

    public void setFnum(String fnum) {
        this.fnum = fnum;
    }

    public void setFauthor(String fauthor) {
        this.fauthor = fauthor;
    }

    public void setFtime(String ftime) {
        this.ftime = ftime;
    }

    public void setFcomment(String fcomment) {
        this.fcomment = fcomment;
    }
}
