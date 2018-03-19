package com.firstgun.dao;

import com.firstgun.entity.NewsTitle;
import org.apache.ibatis.annotations.Param;

import javax.persistence.criteria.CriteriaBuilder;
import java.util.List;

/**
 * @Author:
 * @Date: 2018/3/13 17:34
 * @Description:个人博客主页dao层
 */
public interface NewsTitleMapper {
    //插入数据
    public int insertNews(@Param("ntitle") String ntitle, @Param("nconten") String nconten, @Param("ntab") String ntab, @Param("narticle") String narticle);
    //获取新闻标题、作者、创建日期
    public List<NewsTitle> getSelectNews(@Param("index") Integer index, @Param("pageSize") Integer pageSize);
    //获取今日推荐内容
    public List<NewsTitle> getGroom();
    //获取新闻总条数
    public int newsCount();
    //添加新闻数据
    int inserNews(NewsTitle newsTitle);
    //根据标题，博主模糊查询
    List<NewsTitle> likeCheck(@Param("nauthor") String nauthor,@Param("ntitle") String ntitle);
    //根据nid查询一条数据
    NewsTitle getNewsTitle(@Param("nid") Integer nid);
    //根据nid修改阅读量Nview
    int updateView(@Param("nid")Integer nid,@Param("nview")Integer nview);
}
