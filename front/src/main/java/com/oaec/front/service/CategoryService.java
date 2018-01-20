package com.oaec.front.service;



import com.oaec.common.po.Category;

import java.util.List;

public interface CategoryService {
    /**
     * 获取全部分类
     * @return
     */
    public List<Category> getCategory();
}
