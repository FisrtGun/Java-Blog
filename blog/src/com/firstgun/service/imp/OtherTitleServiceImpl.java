package com.firstgun.service.imp;

import com.firstgun.dao.NewsTitleMapper;
import com.firstgun.dao.OtherTitleMapper;
import com.firstgun.entity.NewsTitle;
import com.firstgun.entity.OtherTitle;
import com.firstgun.service.NewsTitleService;
import com.firstgun.service.OtherTitleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author:
 * @Date: 2018/3/13 17:58
 * @Description:
 */
@Service("OtherTitleServiceImpl")
public class OtherTitleServiceImpl implements OtherTitleService {
    @Resource
    private OtherTitleMapper otherTitleMapper;


    @Override
    public int insertOtherTitle(String ntitle, String nconten, String ntab, String narticle) {
        return otherTitleMapper.insertOtherTitle(ntitle,nconten,ntab,narticle);
    }

    @Override
    public List<OtherTitle> getSelectOther() {
        return otherTitleMapper.getSelectOther();
    }

    @Override
    public List<OtherTitle> getGroom() {
        return otherTitleMapper.getGroom();
    }

    @Override
    public OtherTitle getOtherConnet(Integer nid) {
        return otherTitleMapper.getOtherConnet(nid);
    }

    @Override
    public int updateNview(Integer nview, Integer nid) {
        return otherTitleMapper.updateNview(nview,nid);
    }
}
