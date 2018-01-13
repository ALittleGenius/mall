package com.oaec.mall.service;

import com.oaec.mall.po.Category;

import java.util.List;

public interface CategoryService {
    /**
     * 获取全部分类
     * @return
     */
    public List<Category> getCategory();
}
