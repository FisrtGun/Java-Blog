package com.firstgun.service;

import com.firstgun.entity.CstoGenius;
import com.firstgun.entity.LatestProject;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Author:
 * @Date: 2018/3/15 20:03
 * @Description:
 */
public interface CstoGeniusService {
    public List<CstoGenius> genius(@Param("atype")Integer atype);
    public List<LatestProject> latestAll();
}
