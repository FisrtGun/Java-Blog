package com.firstgun.dao;

import com.firstgun.entity.CstoGenius;
import com.firstgun.entity.LatestProject;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Author:
 * @Date: 2018/3/15 19:14
 * @Description:csto页面dao层
 */
public interface CstoGeniusMapper {
    //获取csto页面的热门领域和热门技术人才的头像和作者
    public List<CstoGenius> genius(@Param("atype")Integer atype);
    //获取最新项目
    public List<LatestProject> latestAll();
}
