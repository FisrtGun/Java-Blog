package com.firstgun.service.imp;

import com.firstgun.dao.FrontMapper;
import com.firstgun.entity.Front;
import com.firstgun.service.FrontService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("frontServiceImpl")
public class FrontServiceImpl implements FrontService {
    @Resource
    private FrontMapper frontMapper;

    @Override
    public List<Front> selectFront() {
        return frontMapper.selectFront();
    }
}
