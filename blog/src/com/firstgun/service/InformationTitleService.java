package com.firstgun.service;

import com.firstgun.entity.InformationTitle;
import org.apache.ibatis.annotations.Param;

import java.util.List;
/*
* 资讯service层
* */
public interface InformationTitleService {
    //获取资讯标题、作者、创建日期
    public List<InformationTitle> selectInformation(@Param("index") Integer index, @Param("pageSize") Integer pageSize);
    //获取今日推荐内容
    public List<InformationTitle> selectGroom();
    //通过ID查询信息
    public InformationTitle selectId(@Param("iId") Integer iId);
}
