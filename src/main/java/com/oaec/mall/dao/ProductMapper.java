package com.oaec.mall.dao;

import com.oaec.mall.po.Product;

import java.util.List;
import java.util.Map;

public interface ProductMapper {
    /**
     * 根据分类查前五
     * @param cid
     * @return
     */
    public List<Product> queryProductByC(Integer cid);

    /**
     * 获取全部商品的销量前五
     * @return
     */
    public List<Product> queryProductTop();

    /**
     * 获取商品详情
     * @param id
     * @return
     */
    public Product queryProductById(Integer id);

    /**
     * 查询商品分页
     * @param map
     * @return
     */
    public List<Product> queryProductByCid(Map<String,Object> map);

    /**
     * 一共有多少条信息
     * @param map
     * @return
     */
    public Integer queryCountByCid(Map<String ,Object> map);

}
