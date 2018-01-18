package com.oaec.mall.service;

import com.oaec.mall.po.MemberCar;

import java.util.List;
import java.util.Map;

public interface MemberCarService {
    /**
     * 添加购物车
     * @param memberCar
     * @return
     */
    public Integer addProductToCar(MemberCar memberCar);

    /**
     * 根据用户名查询购物车
     * @param memberId
     * @return
     */
    public List<Map<String ,Object>> getCarByMId(Integer memberId);

    /**
     * 删除购物车内的商品
     * @param id
     * @return
     */
    public Integer removeCar(Integer id);

    /**
     * 修改购物商品的数量
     * @param id
     * @return
     */
    public Integer setCarNumber(Integer id,Integer number);
}
