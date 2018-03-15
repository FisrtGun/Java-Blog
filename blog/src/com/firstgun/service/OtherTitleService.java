package com.firstgun.service;

import com.firstgun.entity.OtherTitle;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OtherTitleService {
    //插入数据
    int insertOtherTitle(@Param("ntitle") String ntitle, @Param("nconten") String nconten, @Param("ntab") String ntab, @Param("narticle") String narticle);
    //获取其他标题、作者、创建日期
    List<OtherTitle> getSelectOther();
    //获取今日推荐内容
    List<OtherTitle> getGroom();
}
