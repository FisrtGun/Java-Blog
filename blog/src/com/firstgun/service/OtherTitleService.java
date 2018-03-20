package com.firstgun.service;

import com.firstgun.entity.OtherTitle;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OtherTitleService {
    //插入数据
    int insertOtherTitle(@Param("ntitle") String ntitle, @Param("nconten") String nconten, @Param("ntab") String ntab, @Param("narticle") String narticle);
    //获取其他标题、作者、创建日期
    List<OtherTitle> getSelectOther(@Param("index") Integer index, @Param("pageSize") Integer pageSize);
    //获取今日推荐内容
    List<OtherTitle> getGroom();
    //根据nid获取other表的数据
    OtherTitle getOtherConnet(@Param("nid")Integer nid);
    //根据nid修改阅读量
    int updateNview(@Param("nview")Integer nview,@Param("nid")Integer nid);
    //获取新闻总条数
     int otherCount();
}
