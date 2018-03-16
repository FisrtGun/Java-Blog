package com.firstgun.entity;

import org.springframework.stereotype.Service;

import java.io.Serializable;

public class Iteyediscussiongroup implements Serializable {
    /*
    `gid` INT(20) NOT NULL AUTO_INCREMENT,
    `gname` TEXT COMMENT '组名',
    `gtopic` TEXT COMMENT '讨论的话题',
    `gcreateTime` DATE DEFAULT NULL COMMENT '创建时间',
    `gRecoveryTime` DATE DEFAULT NULL COMMENT '回复时间',
     */
    //讨论组ID
    private int gid;
    //组名
    private String gname;
    //组员人数
    private int gnum;
    //讨论的话题
    private String gtopic;
    //创建时间
    private String gcreateTime;
    //点击
    private int nview;
    //回复时间
    private String gRecoveryTime;

    public int getGid() {
        return gid;
    }

    public void setGid(int gid) {
        this.gid = gid;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public int getGnum() {
        return gnum;
    }

    public void setGnum(int gnum) {
        this.gnum = gnum;
    }

    public String getGtopic() {
        return gtopic;
    }

    public void setGtopic(String gtopic) {
        this.gtopic = gtopic;
    }

    public String getGcreateTime() {
        return gcreateTime;
    }

    public void setGcreateTime(String gcreateTime) {
        this.gcreateTime = gcreateTime;
    }

    public int getNview() {
        return nview;
    }

    public void setNview(int nview) {
        this.nview = nview;
    }

    public String getgRecoveryTime() {
        return gRecoveryTime;
    }

    public void setgRecoveryTime(String gRecoveryTime) {
        this.gRecoveryTime = gRecoveryTime;
    }

    @Override
    public String toString() {
        return "Iteyediscussiongroup{" +
                "gid=" + gid +
                ", gname='" + gname + '\'' +
                ", gnum=" + gnum +
                ", gtopic='" + gtopic + '\'' +
                ", gcreateTime='" + gcreateTime + '\'' +
                ", nview=" + nview +
                ", gRecoveryTime='" + gRecoveryTime + '\'' +
                '}';
    }
}
