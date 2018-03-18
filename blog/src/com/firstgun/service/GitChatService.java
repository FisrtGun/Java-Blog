package com.firstgun.service;

import com.firstgun.entity.GitChat;

import java.util.List;

/*
* GitChat类服务层
* */

public interface GitChatService {
    List<GitChat> selectWriter();   //显示作者

    List<GitChat> selectClass();    //显示达人课

    List<GitChat> selectChat();     //显示Chat

    List<GitChat> selectHotClass();    //显示精品达人课

    List<GitChat> selectNewChat();     //显示最新Chat（6条）
}
