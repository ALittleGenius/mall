package com.oaec.common.dao;



import com.oaec.common.po.Category;

import java.util.List;

public interface CategoryMapper {
    /**
     * 查询全部分类
     * @return
     */
    public List<Category> queryCategory();

}
