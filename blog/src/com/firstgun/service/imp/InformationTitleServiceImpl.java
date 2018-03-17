package com.firstgun.service.imp;

import com.firstgun.dao.InformationTitleMapper;
import com.firstgun.entity.InformationTitle;
import com.firstgun.service.InformationTitleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class InformationTitleServiceImpl implements InformationTitleService{
    @Resource
    private InformationTitleMapper informationTitleMapper;

    @Override
    public List<InformationTitle> selectInformation() {
        return informationTitleMapper.selectInformation();
    }

    @Override
    public List<InformationTitle> selectGroom() {
        return informationTitleMapper.selectGroom();
    }
}
