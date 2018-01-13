package com.oaec.mall.dao;

import com.oaec.mall.po.Category;

import java.util.List;

public interface CategoryMapper {
    /**
     * 查询全部分类
     * @return
     */
    public List<Category> queryCategory();

}
