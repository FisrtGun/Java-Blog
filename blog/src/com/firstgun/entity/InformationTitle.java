package com.firstgun.entity;

import org.springframework.stereotype.Repository;

import java.io.Serializable;
import java.util.Date;

/**
 * 资讯页面
 */
@Repository
public class InformationTitle implements Serializable {
    private int iId;      //资讯ID
    private String iTitle;//资讯标题
    private String iConten;//资讯内容
    private String iAuthor;//资讯作者
    private String iTab;//标签
    private Date iCreateTime;//创建时间
    private int iReads;//阅读量
    private String iImg;//图片地址
    private String iArticle;//文章来源
    private int iFollower;//粉丝
    private int iLike;//喜欢
    private int iDiscuss;//评论
    private int iThumb;//点赞
    private String iGrade;//等级
    private int iView;//访问量
    private int iIntegration;//积分
    private int iRanking;//排名
    private String iPicture;//今日推荐图片

    public int getiId() {
        return iId;
    }

    public void setiId(int iId) {
        this.iId = iId;
    }

    public String getiTitle() {
        return iTitle;
    }

    public void setiTitle(String iTitle) {
        this.iTitle = iTitle;
    }

    public String getiConten() {
        return iConten;
    }

    public void setiConten(String iConten) {
        this.iConten = iConten;
    }

    public String getiAuthor() {
        return iAuthor;
    }

    public void setiAuthor(String iAuthor) {
        this.iAuthor = iAuthor;
    }

    public String getiTab() {
        return iTab;
    }

    public void setiTab(String iTab) {
        this.iTab = iTab;
    }

    public Date getiCreateTime() {
        return iCreateTime;
    }

    public void setiCreateTime(Date iCreateTime) {
        this.iCreateTime = iCreateTime;
    }

    public int getiReads() {
        return iReads;
    }

    public void setiReads(int iReads) {
        this.iReads = iReads;
    }

    public String getiImg() {
        return iImg;
    }

    public void setiImg(String iImg) {
        this.iImg = iImg;
    }

    public String getiArticle() {
        return iArticle;
    }

    public void setiArticle(String iArticle) {
        this.iArticle = iArticle;
    }

    public int getiFollower() {
        return iFollower;
    }

    public void setiFollower(int iFollower) {
        this.iFollower = iFollower;
    }

    public int getiLike() {
        return iLike;
    }

    public void setiLike(int iLike) {
        this.iLike = iLike;
    }

    public int getiDiscuss() {
        return iDiscuss;
    }

    public void setiDiscuss(int iDiscuss) {
        this.iDiscuss = iDiscuss;
    }

    public int getiThumb() {
        return iThumb;
    }

    public void setiThumb(int iThumb) {
        this.iThumb = iThumb;
    }

    public String getiGrade() {
        return iGrade;
    }

    public void setiGrade(String iGrade) {
        this.iGrade = iGrade;
    }

    public int getiView() {
        return iView;
    }

    public void setiView(int iView) {
        this.iView = iView;
    }

    public int getiIntegration() {
        return iIntegration;
    }

    public void setiIntegration(int iIntegration) {
        this.iIntegration = iIntegration;
    }

    public int getiRanking() {
        return iRanking;
    }

    public void setiRanking(int iRanking) {
        this.iRanking = iRanking;
    }

    public String getiPicture() {
        return iPicture;
    }

    public void setiPicture(String iPicture) {
        this.iPicture = iPicture;
    }

    @Override
    public String toString() {
        return "informationTitle{" +
                "iId=" + iId +
                ", iTitle='" + iTitle + '\'' +
                ", iConten='" + iConten + '\'' +
                ", iAuthor='" + iAuthor + '\'' +
                ", iTab='" + iTab + '\'' +
                ", iCreateTime=" + iCreateTime +
                ", iReads=" + iReads +
                ", iImg='" + iImg + '\'' +
                ", iArticle='" + iArticle + '\'' +
                ", iFollower=" + iFollower +
                ", iLike=" + iLike +
                ", iDiscuss=" + iDiscuss +
                ", iThumb=" + iThumb +
                ", iGrade='" + iGrade + '\'' +
                ", iView=" + iView +
                ", iIntegration=" + iIntegration +
                ", iRanking=" + iRanking +
                ", iPicture='" + iPicture + '\'' +
                '}';
    }
}
