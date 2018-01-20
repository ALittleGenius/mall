package com.oaec.front.service.impl;


import com.oaec.common.dao.CategoryMapper;
import com.oaec.common.po.Category;
import com.oaec.front.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {
    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private CategoryMapper categoryMapper;

    @Override
    public List<Category> getCategory() {
        return categoryMapper.queryCategory();
    }
}
