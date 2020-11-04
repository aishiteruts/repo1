package com.dqh.core.dao;

import com.dqh.core.po.NewspaperClass;

import java.util.List;

/**
 * 报刊类别DAO层接口
 */
public interface NewspaperClassDao {
    // 根据分类标号查询报刊信息
    public NewspaperClass selectNewspaperClassByNewspaperClassCode(String newspaperClassCode);
    // 查询所有报刊信息
    public List<NewspaperClass> selectAllNewspaperClass();
}


