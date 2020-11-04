package com.dqh.core.service;

import com.dqh.common.utils.Page;
import com.dqh.core.po.Newspaper;
import com.dqh.core.pojo.ResultNewspaper;

/**
 * 报刊Service层接口
 */
public interface NewspaperService {
    // 查询报刊列表
    public Page<ResultNewspaper> findNewspaperList(Integer page, Integer rows, String newspaperName, String newspaperClassCode);
    // 新增报刊
    public int createNewspaper(Newspaper newspaper);
    // 通过报刊代号查询报刊
    public Newspaper getNewspaperByNewspaperCode(String newspaperCode);
    // 更新报刊信息
    public int updateNewspaper(Newspaper newspaper);
    // 删除报刊
    public int deleteNewspaper(String newspaperCode);


}
