package com.firstgun.entity;

import java.io.Serializable;

public class IteyeInformation implements Serializable {
    /*

        `iid` INT(20) NOT NULL AUTO_INCREMENT,
        `ititle` TEXT COMMENT '资讯标题',
        `iconten` TEXT COMMENT '资讯内容',
        `iauthor` VARCHAR(255) DEFAULT NULL COMMENT '资讯作者',
        `icreateTime` DATE DEFAULT NULL COMMENT '创建时间',
  */
    //资讯ID
    private int iid;
    //资讯标题
    private String ititle;
    //资讯内容
    private String iconten;
    //资讯作者
    private String iauthor;
    //创建时间
    private String icreateTime;

    public int getIid() {
        return iid;
    }

    public void setIid(int iid) {
        this.iid = iid;
    }

    public String getItitle() {
        return ititle;
    }

    public void setItitle(String ititle) {
        this.ititle = ititle;
    }

    public String getIconten() {
        return iconten;
    }

    public void setIconten(String iconten) {
        this.iconten = iconten;
    }

    public String getIauthor() {
        return iauthor;
    }

    public void setIauthor(String iauthor) {
        this.iauthor = iauthor;
    }

    public String getIcreateTime() {
        return icreateTime;
    }

    public void setIcreateTime(String icreateTime) {
        this.icreateTime = icreateTime;
    }

    @Override
    public String toString() {
        return "IteyeInformation{" +
                "iid=" + iid +
                ", ititle='" + ititle + '\'' +
                ", iconten='" + iconten + '\'' +
                ", iauthor='" + iauthor + '\'' +
                ", icreateTime='" + icreateTime + '\'' +
                '}';
    }
}
