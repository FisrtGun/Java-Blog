package com.firstgun.service;

import com.firstgun.entity.InformationTitle;

import java.util.List;
/*
* 资讯service层
* */
public interface InformationTitleService {
    //获取资讯标题、作者、创建日期
    public List<InformationTitle> selectInformation();
    //获取今日推荐内容
    public List<InformationTitle> selectGroom();
}
