package com.oaec.front.service;


import com.oaec.common.po.Product;

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
    public List<Product> getProductByCid(Map<String, Object> map);

    /**
     * 一共有多少条商品
     * @param map
     * @return
     */
    public Integer getCountByCid(Map<String, Object> map);

    /**
     * 获取商品详情
     * @param id
     * @return
     */
    public Product getProductDetail(Integer id);

    /**
     * 修改商品库存和销量
     * @param id
     * @param number
     * @return
     */
    public Integer setProduct(Integer id, Integer number);

    /**
     * 商品检索
     * @param like
     * @return
     */
    public List<Product> getProduct(String like);
}
