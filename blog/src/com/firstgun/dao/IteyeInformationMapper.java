package com.firstgun.dao;

import com.firstgun.entity.IteyeInformation;
import com.firstgun.entity.OtherTitle;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Author:
 * @Date: 2018/3/13 17:34
 * @Description:iteye资讯数据dao层
 */
public interface IteyeInformationMapper {
    //获取资讯全部数据
    List<IteyeInformation> getIteyeInformation();
    //CSTO获取资讯标题
    List<IteyeInformation> informationTitle();
}
