package com.dqh.core.service.impl;

import com.dqh.core.dao.NewspaperClassDao;
import com.dqh.core.po.NewspaperClass;
import com.dqh.core.service.NewspaperClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@Service("NewspaperClassService")
public class NewspaperClassServiceImpl implements NewspaperClassService {
    @Autowired
    private NewspaperClassDao newspaperClassDao;

    @Override
    public NewspaperClass selectNewspaperClassByNewspaperClassCode(String newspaperClassCode) {
        return this.newspaperClassDao.selectNewspaperClassByNewspaperClassCode(newspaperClassCode);
    }

    @Override
    public List<NewspaperClass> selectAllNewspaperClass() {
        return this.newspaperClassDao.selectAllNewspaperClass();
    }
}
