package com.firstgun.service;

import com.firstgun.entity.NewsTitle;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Author:
 * @Date: 2018/3/13 17:56
 * @Description:
 */
public interface NewsTitleService {
    public int insertNews(@Param("ntitle") String ntitle, @Param("nconten") String nconten, @Param("ntab") String ntab, @Param("narticle") String narticle);
    public List<NewsTitle> getSelectNews(int index, int pageSize);
    public List<NewsTitle> getGroom();
    public int newsCount();

    //添加新闻数据
    int inserNews(NewsTitle newsTitle);
    //根据标题，博主模糊查询
    List<NewsTitle> likeCheck(@Param("nauthor") String nauthor,@Param("ntitle") String ntitle);
    //根据nid查询一条数据
    NewsTitle getNewsTitle(@Param("nid") Integer nid);
    //根据nid修改Nview
    int updateView(@Param("nid")Integer nid,@Param("nview")Integer nview);
}
