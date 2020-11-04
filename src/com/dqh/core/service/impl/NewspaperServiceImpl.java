package com.dqh.core.service.impl;

import com.dqh.common.utils.Page;
import com.dqh.core.dao.NewspaperDao;
import com.dqh.core.po.Newspaper;
import com.dqh.core.pojo.ResultNewspaper;
import com.dqh.core.service.NewspaperService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 报刊Service层接口实现类
 */

@Transactional
@Service("NewspaperService")
public class NewspaperServiceImpl implements NewspaperService {
    @Autowired
    private NewspaperDao newspaperDao;

    @Override
    public Page<ResultNewspaper> findNewspaperList(Integer page, Integer rows, String newspaperName, String newspaperClassCode) {
        ResultNewspaper newspaper = new ResultNewspaper();
        if (StringUtils.isNotBlank(newspaperName)) {
            newspaper.setNewspaperName(newspaperName);
        }
        if (StringUtils.isNotBlank(newspaperClassCode)) {
            newspaper.setNewspaperClassCode(newspaperClassCode);
        }
        // 当前页
        newspaper.setStart((page - 1) * rows);
        // 每页数
        newspaper.setRows(rows);
        List<ResultNewspaper> newspapers = newspaperDao.selectNewspaperList(newspaper);
        Newspaper newspaperForCount = new Newspaper();
        newspaperForCount.setNewspaperName(newspaperName);
        newspaperForCount.setNewspaperClassCode(newspaperClassCode);
        Integer count = newspaperDao.selectNewspaperListCount(newspaperForCount);
        // 创建Page返回对象
        Page<ResultNewspaper> result = new Page<>();
        result.setPage(page);
        result.setRows(newspapers);
        result.setSize(rows);
        result.setTotal(count);
        return result;
    }

    @Override
    public int createNewspaper(Newspaper newspaper) {
        return newspaperDao.createNewspaper(newspaper);
    }

    @Override
    public Newspaper getNewspaperByNewspaperCode(String newspaperCode) {
        return newspaperDao.getNewspaperByNewspaperCode(newspaperCode);
    }

    @Override
    public int updateNewspaper(Newspaper newspaper) {
        return newspaperDao.updateNewspaper(newspaper);
    }

    @Override
    public int deleteNewspaper(String newspaperCode) {
        return newspaperDao.deleteNewspaper(newspaperCode);
    }
}
