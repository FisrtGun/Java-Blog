package com.firstgun.service.imp;

import com.firstgun.dao.DbMapper;
import com.firstgun.entity.NewsTitle;
import com.firstgun.service.DbService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("DbServiceImpl")
public class DbServiceImpl implements DbService{
    @Resource
    private DbMapper dbMapper;
    @Override
    public List<NewsTitle> getSelectNews(int index, int pageSize) {
        return dbMapper.getSelectNews((index-1)*pageSize,pageSize);
    }

    @Override
    public int getTotalCount() {
        return dbMapper.getTotalCount();
    }

    @Override
    public List<NewsTitle> getGroom() {
        return dbMapper.getGroom();
    }

    @Override
    public NewsTitle getNewsContent(int nid) {
        return dbMapper.getNewsContent(nid);
    }

}
