package com.oaec.mall.service.impl;

import com.oaec.mall.dao.ProductMapper;
import com.oaec.mall.po.Product;
import com.oaec.mall.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("productService")
public class ProductServiceImpl implements ProductService {
    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private ProductMapper productMapper;

    @Override
    public List<Product> getProductByC(Integer cid) {
        System.out.println("cid = " + cid);
        return productMapper.queryProductByC(cid);
    }

    @Override
    public List<Product> getProductTop() {
        return productMapper.queryProductTop();
    }

    @Override
    public List<Product> getProductByCid(Map<String, Object> map) {
        return productMapper.queryProductByCid(map);
    }

    @Override
    public Integer getCountByCid(Map<String, Object> map) {
        return productMapper.queryCountByCid(map);
    }

    @Override
    public Product getProductDetail(Integer id) {
        return productMapper.queryProductById(id);
    }
}
