package com.firstgun.service.imp;

import com.firstgun.dao.GitChatMapper;
import com.firstgun.entity.GitChat;
import com.firstgun.service.GitChatService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class GitChatServiceImpl implements GitChatService{
    @Resource
    private GitChatMapper gitChatMapper;

    @Override
    public List<GitChat> selectWriter() {
        return gitChatMapper.selectWriter();  //显示作者
    }

    @Override
    public List<GitChat> selectClass() {
        return gitChatMapper.selectClass();   //显示达人课
    }

    @Override
    public List<GitChat> selectChat() {
        return gitChatMapper.selectChat();     //显示Chat
    }

    @Override
    public List<GitChat> selectHotClass() {
        return gitChatMapper.selectHotClass();
    }

    @Override
    public List<GitChat> selectNewChat() {
        return gitChatMapper.selectNewChat();
    }

   /* @Override
    public List<GitChat> selectLike(String iAuthor, String iTitle) {
        return gitChatMapper.selectLike(iAuthor,iTitle);
    }*/
}
