package com.firstgun.service.imp;

import com.firstgun.dao.IteyeDiscussionGroupMapper;
import com.firstgun.entity.Iteyediscussiongroup;
import com.firstgun.service.IteyediscussiongroupService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class IteyediscussiongroupServiceImpl implements IteyediscussiongroupService {
    @Resource
    private IteyeDiscussionGroupMapper iteyeDiscussionGroupMapper;
    @Override
    public List<Iteyediscussiongroup> getIteyediscussiongroup() {
        return iteyeDiscussionGroupMapper.getIteyediscussiongroup();
    }
}
