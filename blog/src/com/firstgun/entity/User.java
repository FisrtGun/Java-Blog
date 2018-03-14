package com.firstgun.entity;

import java.io.Serializable;

/**
 * 登陆用户类
 */
public class User  implements Serializable{
    //id--隐藏
    private int uid;
    //用户名
    private String uname;
    //密码
    private String upwd;
    //个人图片路径
    private String upicture;
    public User() {
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpwd() {
        return upwd;
    }

    public void setUpwd(String upwd) {
        this.upwd = upwd;
    }

    public String getUpicture() {
        return upicture;
    }

    public void setUpicture(String upicture) {
        this.upicture = upicture;
    }

    @Override
    public String toString() {
        return "User{" +
                "uid=" + uid +
                ", uname='" + uname + '\'' +
                ", upwd='" + upwd + '\'' +
                ", upicture='" + upicture + '\'' +
                '}';
    }
}
