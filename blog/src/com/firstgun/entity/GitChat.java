package com.firstgun.entity;

import java.io.Serializable;
import java.util.Date;

/*
* GitChat
* */

public class GitChat implements Serializable{
    private int cid;  //gitchat ID

    private String writername;   //作者昵称
    private String writerhead;   //作者头像
    private String writerimage;   //作者照片
    private String writertag;     //作者标签
    private String writerdesc;    //作者描述

    private String chattopic;      //Chat主题
    private String topicimage;     //主题图片路径

    private int chatclasshour;        //达人课课时
    private int chatclassprice;      //达人课价格
    private int chatclassbought;      //购买人数
    private String chatclassprofile;       //课程简介
    private String chatclasssuitable;     //适宜人群
    private String chatclassnotice;      //购买须知
    private String chatclasstitle;       //达人课标题

    private String chattitle;             //Chat标题
    private int chathits;               //Chat点击量
    private String chattag;             //Chat标签
    private int chatprice;             //Chat价格
    private Date chatcreatetime;        //Chat创建时间

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getWritername() {
        return writername;
    }

    public void setWritername(String writername) {
        this.writername = writername;
    }

    public String getWriterhead() {
        return writerhead;
    }

    public void setWriterhead(String writerhead) {
        this.writerhead = writerhead;
    }

    public String getWriterimage() {
        return writerimage;
    }

    public void setWriterimage(String writerimage) {
        this.writerimage = writerimage;
    }

    public String getWritertag() {
        return writertag;
    }

    public void setWritertag(String writertag) {
        this.writertag = writertag;
    }

    public String getWriterdesc() {
        return writerdesc;
    }

    public void setWriterdesc(String writerdesc) {
        this.writerdesc = writerdesc;
    }

    public String getChattopic() {
        return chattopic;
    }

    public void setChattopic(String chattopic) {
        this.chattopic = chattopic;
    }

    public String getTopicimage() {
        return topicimage;
    }

    public void setTopicimage(String topicimage) {
        this.topicimage = topicimage;
    }

    public int getChatclasshour() {
        return chatclasshour;
    }

    public void setChatclasshour(int chatclasshour) {
        this.chatclasshour = chatclasshour;
    }

    public int getChatclassprice() {
        return chatclassprice;
    }

    public void setChatclassprice(int chatclassprice) {
        this.chatclassprice = chatclassprice;
    }

    public int getChatclassbought() {
        return chatclassbought;
    }

    public void setChatclassbought(int chatclassbought) {
        this.chatclassbought = chatclassbought;
    }

    public String getChatclassprofile() {
        return chatclassprofile;
    }

    public void setChatclassprofile(String chatclassprofile) {
        this.chatclassprofile = chatclassprofile;
    }

    public String getChatclasssuitable() {
        return chatclasssuitable;
    }

    public void setChatclasssuitable(String chatclasssuitable) {
        this.chatclasssuitable = chatclasssuitable;
    }

    public String getChatclassnotice() {
        return chatclassnotice;
    }

    public void setChatclassnotice(String chatclassnotice) {
        this.chatclassnotice = chatclassnotice;
    }

    public String getChatclasstitle() {
        return chatclasstitle;
    }

    public void setChatclasstitle(String chatclasstitle) {
        this.chatclasstitle = chatclasstitle;
    }

    public String getChattitle() {
        return chattitle;
    }

    public void setChattitle(String chattitle) {
        this.chattitle = chattitle;
    }

    public int getChathits() {
        return chathits;
    }

    public void setChathits(int chathits) {
        this.chathits = chathits;
    }

    public String getChattag() {
        return chattag;
    }

    public void setChattag(String chattag) {
        this.chattag = chattag;
    }

    public int getChatprice() {
        return chatprice;
    }

    public void setChatprice(int chatprice) {
        this.chatprice = chatprice;
    }

    public Date getChatcreatetime() {
        return chatcreatetime;
    }

    public void setChatcreatetime(Date chatcreatetime) {
        this.chatcreatetime = chatcreatetime;
    }
}
