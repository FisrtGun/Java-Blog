package com.firstgun.entity;

import java.io.Serializable;

/**
 * @Author:
 * @Date: 2018/3/15 19:10
 * @Description:
 */
public class CstoGenius implements Serializable {
    private int aid;
    private int atype;//类型
    private String alogo;//头像logo
    private String author;//作者
    private String atitle;//标题

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public int getAtype() {
        return atype;
    }

    public void setAtype(int atype) {
        this.atype = atype;
    }

    public String getAlogo() {
        return alogo;
    }

    public void setAlogo(String alogo) {
        this.alogo = alogo;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getAtitle() {
        return atitle;
    }

    public void setAtitle(String atitle) {
        this.atitle = atitle;
    }

    @Override
    public String toString() {
        return "CstoGenius{" +
                "aid=" + aid +
                ", atype=" + atype +
                ", alogo='" + alogo + '\'' +
                ", author='" + author + '\'' +
                ", atitle='" + atitle + '\'' +
                '}';
    }
}
