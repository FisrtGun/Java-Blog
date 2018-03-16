package com.firstgun.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * @Author:
 * @Date: 2018/3/15 23:58
 * @Description: 最新项目表
 */
public class LatestProject implements Serializable {
    private int lid;
    private String ltitle;//项目标题
    private Date lreleaseTime;//发布时间
    private String lprogramBudget;//项目预算
    private String ldevelopment;//开发周期
    private String lprojectClassification;//项目分类
    private int lcompetitive;//竞标人数
    private String ltab;//项目标签
    private String llogo;//发布头像
    private String lauthor;//发布作者
    private String lphone;//联系方式
    private String lidentity;//身份
    private String liaddress;//地址
    private String lstatic;//在线状态
    private String lprojectDesc;//项目描述
    private String lterm;//项目有效期

    @Override
    public String toString() {
        return "LatestProjectMapper{" +
                "lid=" + lid +
                ", ltitle='" + ltitle + '\'' +
                ", lreleaseTime=" + lreleaseTime +
                ", lprogramBudget='" + lprogramBudget + '\'' +
                ", ldevelopment='" + ldevelopment + '\'' +
                ", lprojectClassification='" + lprojectClassification + '\'' +
                ", lcompetitive=" + lcompetitive +
                ", ltab='" + ltab + '\'' +
                ", llogo='" + llogo + '\'' +
                ", lauthor='" + lauthor + '\'' +
                ", lphone='" + lphone + '\'' +
                ", lidentity='" + lidentity + '\'' +
                ", liaddress='" + liaddress + '\'' +
                ", lstatic='" + lstatic + '\'' +
                ", lprojectDesc='" + lprojectDesc + '\'' +
                ", lterm='" + lterm + '\'' +
                '}';
    }

    public int getLid() {
        return lid;
    }

    public void setLid(int lid) {
        this.lid = lid;
    }

    public String getLtitle() {
        return ltitle;
    }

    public void setLtitle(String ltitle) {
        this.ltitle = ltitle;
    }

    public Date getLreleaseTime() {
        return lreleaseTime;
    }

    public void setLreleaseTime(Date lreleaseTime) {
        this.lreleaseTime = lreleaseTime;
    }

    public String getLprogramBudget() {
        return lprogramBudget;
    }

    public void setLprogramBudget(String lprogramBudget) {
        this.lprogramBudget = lprogramBudget;
    }

    public String getLdevelopment() {
        return ldevelopment;
    }

    public void setLdevelopment(String ldevelopment) {
        this.ldevelopment = ldevelopment;
    }

    public String getLprojectClassification() {
        return lprojectClassification;
    }

    public void setLprojectClassification(String lprojectClassification) {
        this.lprojectClassification = lprojectClassification;
    }

    public int getLcompetitive() {
        return lcompetitive;
    }

    public void setLcompetitive(int lcompetitive) {
        this.lcompetitive = lcompetitive;
    }

    public String getLtab() {
        return ltab;
    }

    public void setLtab(String ltab) {
        this.ltab = ltab;
    }

    public String getLlogo() {
        return llogo;
    }

    public void setLlogo(String llogo) {
        this.llogo = llogo;
    }

    public String getLauthor() {
        return lauthor;
    }

    public void setLauthor(String lauthor) {
        this.lauthor = lauthor;
    }

    public String getLphone() {
        return lphone;
    }

    public void setLphone(String lphone) {
        this.lphone = lphone;
    }

    public String getLidentity() {
        return lidentity;
    }

    public void setLidentity(String lidentity) {
        this.lidentity = lidentity;
    }

    public String getLiaddress() {
        return liaddress;
    }

    public void setLiaddress(String liaddress) {
        this.liaddress = liaddress;
    }

    public String getLstatic() {
        return lstatic;
    }

    public void setLstatic(String lstatic) {
        this.lstatic = lstatic;
    }

    public String getLprojectDesc() {
        return lprojectDesc;
    }

    public void setLprojectDesc(String lprojectDesc) {
        this.lprojectDesc = lprojectDesc;
    }

    public String getLterm() {
        return lterm;
    }

    public void setLterm(String lterm) {
        this.lterm = lterm;
    }
}
