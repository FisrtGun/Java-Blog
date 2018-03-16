package com.firstgun.dao;

import com.firstgun.entity.Iteyediscussiongroup;

import java.util.List;

/**
 * @Author:
 * @Date: 2018/3/13 17:34
 * @Description:iteye资讯数据dao层
 */
public interface IteyeDiscussionGroupMapper {
    //获取群主讨论的全部数据
    List<Iteyediscussiongroup> getIteyediscussiongroup();
}
