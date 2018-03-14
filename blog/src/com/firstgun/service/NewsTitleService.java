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
    public List<NewsTitle> getSelectNews();
    public List<NewsTitle> getGroom();
}
