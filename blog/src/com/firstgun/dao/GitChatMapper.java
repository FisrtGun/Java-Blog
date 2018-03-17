package com.firstgun.dao;

import com.firstgun.entity.GitChat;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * GitChat类的查询dao
 */

@Repository
public interface GitChatMapper {
    List<GitChat> selectWriter();   //显示作者

    List<GitChat> selectClass();    //显示达人课

    List<GitChat> selectChat();     //显示Chat

    List<GitChat> selectHotClass();    //显示精品达人课（3条）

    List<GitChat> selectNewChat();     //显示最新Chat（6条）
}
