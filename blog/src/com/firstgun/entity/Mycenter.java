package com.firstgun.entity;

import java.io.Serializable;

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
    private String sec;
    //生日
    private String birthday;
    //地址
    private String address;

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

    public String getSec() {
        return sec;
    }

    public void setSec(String sec) {
        this.sec = sec;
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

    @Override
    public String toString() {
        return "Mycenter{" +
                "iserId=" + iserId +
                ", userName='" + userName + '\'' +
                ", upicture='" + upicture + '\'' +
                ", attention='" + attention + '\'' +
                ", fans='" + fans + '\'' +
                ", industry='" + industry + '\'' +
                ", job='" + job + '\'' +
                ", sec='" + sec + '\'' +
                ", birthday='" + birthday + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}
