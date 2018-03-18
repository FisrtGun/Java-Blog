package com.firstgun.entity;

import java.io.Serializable;
import java.util.List;

public class Mycenter implements Serializable{
    //用户id
    private int iserId;
    //用户名
    private String userName;
    //用户头像
    private String upicture;
    //关注
    private String attention;
    //粉丝
    private String fans;
    //行业
    private String industry;
    //职业
    private String job;
    //性别
    private String sex;
    //生日
    private String birthday;
    //地址
    private String address;
    //对多：有多篇博客
    private List<NewsTitle> newsTitle;

    public List<NewsTitle> getNewsTitle() {
        return newsTitle;
    }

    public void setNewsTitle(List<NewsTitle> newsTitle) {
        this.newsTitle = newsTitle;
    }

    public int getIserId() {
        return iserId;
    }

    public void setIserId(int iserId) {
        this.iserId = iserId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUpicture() {
        return upicture;
    }

    public void setUpicture(String upicture) {
        this.upicture = upicture;
    }

    public String getAttention() {
        return attention;
    }

    public void setAttention(String attention) {
        this.attention = attention;
    }

    public String getFans() {
        return fans;
    }

    public void setFans(String fans) {
        this.fans = fans;
    }

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }


}
