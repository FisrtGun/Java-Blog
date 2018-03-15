package com.firstgun.entity;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @Author:Mr.Deng
 * @Date: 2018/3/13 17:22
 * @Description:其他主页数据表
 */
public class OtherTitle implements Serializable {
    private int nid;
    private String ntitle;//其他标题
    private String nconten;//其他内容
    private String nauthor;//其他作者
    private String ntab;//标签
    private Date ncreateTime;//创建时间
    private int nreads;//阅读量
    private int nimg;//图片地址
    private String narticle;//文章来源
    private int nfollower;//粉丝
    private int nlike;//喜欢
    private int ndiscuss;//评论
    private int nthumb;//点赞
    private String ngrade;//等级
    private int nview;//访问量
    private int nintegration;//积分
    private int nranking;//排名
    private String npicture;//今日推荐图片

    public int getNid() {
        return nid;
    }

    public void setNid(int nid) {
        this.nid = nid;
    }

    public String getNtitle() {
        return ntitle;
    }

    public void setNtitle(String ntitle) {
        this.ntitle = ntitle;
    }

    public String getNconten() {
        return nconten;
    }

    public void setNconten(String nconten) {
        this.nconten = nconten;
    }

    public String getNauthor() {
        return nauthor;
    }

    public void setNauthor(String nauthor) {
        this.nauthor = nauthor;
    }

    public String getNtab() {
        return ntab;
    }

    public void setNtab(String ntab) {
        this.ntab = ntab;
    }

    public Date getNcreateTime() {

        return ncreateTime;
    }

    public void setNcreateTime(Date ncreateTime) {
        this.ncreateTime = ncreateTime;
    }

    public int getNreads() {
        return nreads;
    }

    public void setNreads(int nreads) {
        this.nreads = nreads;
    }

    public int getNimg() {
        return nimg;
    }

    public void setNimg(int nimg) {
        this.nimg = nimg;
    }

    public String getNarticle() {
        return narticle;
    }

    public void setNarticle(String narticle) {
        this.narticle = narticle;
    }

    public int getNfollower() {
        return nfollower;
    }

    public void setNfollower(int nfollower) {
        this.nfollower = nfollower;
    }

    public int getNlike() {
        return nlike;
    }

    public void setNlike(int nlike) {
        this.nlike = nlike;
    }

    public int getNdiscuss() {
        return ndiscuss;
    }

    public void setNdiscuss(int ndiscuss) {
        this.ndiscuss = ndiscuss;
    }

    public int getNthumb() {
        return nthumb;
    }

    public void setNthumb(int nthumb) {
        this.nthumb = nthumb;
    }

    public String getNgrade() {
        return ngrade;
    }

    public void setNgrade(String ngrade) {
        this.ngrade = ngrade;
    }

    public int getNview() {
        return nview;
    }

    public void setNview(int nview) {
        this.nview = nview;
    }

    public int getNintegration() {
        return nintegration;
    }

    public void setNintegration(int nintegration) {
        this.nintegration = nintegration;
    }

    public int getNranking() {
        return nranking;
    }

    public void setNranking(int nranking) {
        this.nranking = nranking;
    }

    public String getNpicture() {
        return npicture;
    }

    public void setNpicture(String npicture) {
        this.npicture = npicture;
    }

    @Override
    public String toString() {
        return "OtherTitle{" +
                "nid=" + nid +
                ", ntitle='" + ntitle + '\'' +
                ", nconten='" + nconten + '\'' +
                ", nauthor='" + nauthor + '\'' +
                ", ntab='" + ntab + '\'' +
                ", ncreateTime=" + ncreateTime +
                ", nreads=" + nreads +
                ", nimg=" + nimg +
                ", narticle='" + narticle + '\'' +
                ", nfollower=" + nfollower +
                ", nlike=" + nlike +
                ", ndiscuss=" + ndiscuss +
                ", nthumb=" + nthumb +
                ", ngrade='" + ngrade + '\'' +
                ", nview=" + nview +
                ", nintegration=" + nintegration +
                ", nranking=" + nranking +
                ", npicture='" + npicture + '\'' +
                '}';
    }
}
