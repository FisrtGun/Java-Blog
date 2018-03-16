package com.firstgun.service.imp;

import com.firstgun.dao.LatestProjectMapper;
import com.firstgun.entity.LatestProject;
import com.firstgun.service.LatestProjectService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author:
 * @Date: 2018/3/16 10:41
 * @Description:
 */
@Service("latestProjectServiceImpl")
public class LatestProjectServiceImpl implements LatestProjectService {
    @Resource
    private LatestProjectMapper latestProjectMapper;
    @Override
    public List<LatestProject> latest() {
        return latestProjectMapper.latest();
    }
}
