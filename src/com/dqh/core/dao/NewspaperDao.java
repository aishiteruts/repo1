package com.dqh.core.dao;


import com.dqh.core.po.Newspaper;
import com.dqh.core.pojo.ResultNewspaper;

import java.util.List;

/**
 * 报刊DAO层接口
 */
public interface NewspaperDao {
    // 查询报刊列表
    public List<ResultNewspaper> selectNewspaperList(ResultNewspaper newspaper);

    // 查询报刊总数
    public Integer selectNewspaperListCount(Newspaper newspaper);

    // 新增报刊
    public int createNewspaper(Newspaper newspaper);

    // 通过报刊代号查询报刊
    public Newspaper getNewspaperByNewspaperCode(String newspaperCode);

    // 更新报刊信息
    public int updateNewspaper(Newspaper newspaper);

    // 删除报刊
    int deleteNewspaper(String newspaperCode);
}
