package com.firstgun.service.imp;

import com.firstgun.dao.CstoGeniusMapper;
import com.firstgun.entity.CstoGenius;
import com.firstgun.entity.LatestProject;
import com.firstgun.service.CstoGeniusService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author:
 * @Date: 2018/3/15 23:01
 * @Description:
 */
@Service("cstoGeniusServiceImpl")
public class CstoGeniusServiceImpl implements CstoGeniusService{
    @Resource
    private CstoGeniusMapper cstoGeniusMapper;
    @Override
    public List<CstoGenius> genius(Integer atype) {
        return cstoGeniusMapper.genius(atype);
    }

    @Override
    public List<LatestProject> latestAll() {
        return cstoGeniusMapper.latestAll();
    }
}
