package com.oaec.mall.service;

import com.oaec.mall.po.Product;

import java.util.List;
import java.util.Map;

public interface ProductService {
    /**
     * 根据分类获取商品
     * @param cid
     * @return
     */
    public List<Product> getProductByC(Integer cid);

    /**
     * 获取全部商品的销量前五
     * @return
     */
    public List<Product> getProductTop();

    /**
     * 查询商品
     * @param map
     * @return
     */
    public List<Product> getProductByCid(Map<String ,Object> map);

    /**
     * 一共有多少条商品
     * @param map
     * @return
     */
    public Integer getCountByCid(Map<String,Object> map);

    /**
     * 获取商品详情
     * @param id
     * @return
     */
    public Product getProductDetail(Integer id);
}
