package com.firstgun.service.imp;

import com.firstgun.dao.MyCenterMapper;
import com.firstgun.entity.Mycenter;
import com.firstgun.entity.NewsTitle;
import com.firstgun.service.MyCenterService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("MyCenterServiceImpl")
public class MyCenterServiceImpl implements MyCenterService {
    @Resource
    private MyCenterMapper myCenterMapper;
    @Override
    public List<Mycenter> getMyInfo(String userName) {
        return myCenterMapper.getMyInfo(userName);
    }

    @Override
    public List<Mycenter> getMyBlog(String userName) {
        return myCenterMapper.getMyBlog(userName);
    }
}
