package com.firstgun.service.imp;

import com.firstgun.dao.NewsTitleMapper;
import com.firstgun.entity.NewsTitle;
import com.firstgun.service.NewsTitleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author:
 * @Date: 2018/3/13 17:58
 * @Description:
 */
@Service("newsTitleServiceImpl")
public class NewsTitleServiceImpl implements NewsTitleService {
    @Resource
    private NewsTitleMapper newsTitleMapper;

    @Override
    public int insertNews(String ntitle, String nconten, String ntab, String narticle) {
        return newsTitleMapper.insertNews(ntitle,nconten,ntab,narticle);
    }

    @Override
    public List<NewsTitle> getSelectNews() {
        return newsTitleMapper.getSelectNews();
    }

    @Override
    public List<NewsTitle> getGroom() {
        return newsTitleMapper.getGroom();
    }
}
