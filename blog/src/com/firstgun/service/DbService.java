package com.firstgun.service;

import com.firstgun.entity.NewsTitle;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DbService {
    //分页显示文章标题，作者，创建日期
    public List<NewsTitle> getSelectNews(int index, int pageSize);

    //获取文章总条数
    public int getTotalCount();

    //获取今日推荐内容
    public List<NewsTitle> getGroom();

    //根据nid获取文章内容
    public NewsTitle getNewsContent(int nid);
}
