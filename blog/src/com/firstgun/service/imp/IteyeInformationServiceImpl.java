package com.firstgun.service.imp;

import com.firstgun.dao.IteyeInformationMapper;
import com.firstgun.entity.IteyeInformation;
import com.firstgun.service.IteyeInformationService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("iteyeInformationServiceImpl")
public class IteyeInformationServiceImpl implements IteyeInformationService{
    @Resource
    IteyeInformationMapper iteyeInformationMapper;

    @Override
    public List<IteyeInformation> getIteyeInformation() {
        return iteyeInformationMapper.getIteyeInformation();
    }

    @Override
    public List<IteyeInformation> informationTitle() {
        return iteyeInformationMapper.informationTitle();
    }
}
