package com.firstgun.dao;

import com.firstgun.entity.LatestProject;

import java.util.List;

/**
 * @Author:
 * @Date: 2018/3/16 10:33
 * @Description:
 */
public interface LatestProjectMapper {
    //获取项目标题、作者头像、已竞标人数、预算、剩余天数、标签
    public List<LatestProject> latest();
}
