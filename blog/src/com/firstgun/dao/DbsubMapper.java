package com.firstgun.dao;

import com.firstgun.entity.NewsTitle;
import org.jboss.logging.Param;

import java.util.List;

public interface DbsubMapper {
    //根据点击的标题，显示文章内容
    public List<NewsTitle> getNewsContent(@Param("n"));


}
