package com.firstgun.dao;

import com.firstgun.entity.InformationTitle;

import java.util.List;

/**
 * @Author:
 * @Date: 2018/3/13 17:34
 * @Description:资讯dao层
 */
public interface InformationTitleMapper {
    //获取资讯标题、作者、创建日期
    public List<InformationTitle> selectInformation();
    //获取今日推荐内容
    public List<InformationTitle> selectGroom();
}
