package com.dqh.core.service;

import com.dqh.core.po.NewspaperClass;

import java.util.List;

public interface NewspaperClassService {
    // 根据分类标号查询报刊信息
    public NewspaperClass selectNewspaperClassByNewspaperClassCode(String newspaperClassCode);
    // 查询所有报刊信息
    public List<NewspaperClass> selectAllNewspaperClass();
}
