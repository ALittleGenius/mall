package com.oaec.mall.service.impl;

import com.oaec.mall.dao.CategoryMapper;
import com.oaec.mall.po.Category;
import com.oaec.mall.service.CategoryService;
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
