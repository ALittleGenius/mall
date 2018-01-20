package com.oaec.common.dao;


import com.oaec.common.po.Product;
import org.apache.ibatis.annotations.Param;

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
    public List<Product> queryProductByCid(Map<String, Object> map);

    /**
     * 一共有多少条信息
     * @param map
     * @return
     */
    public Integer queryCountByCid(Map<String, Object> map);

    public int doUpdate(@Param("number") Integer number, @Param("id") Integer id);

    /**
     * 商品检索
     * @param like
     * @return
     */
    public List<Product> queryLike(String like);

}
