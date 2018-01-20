package com.oaec.front.service;


import com.oaec.common.po.Orders;

import java.util.List;

public interface OrdersService {
    /**
     * 添加订单
     * @param orders
     * @return
     */
    public Integer addOrders(Orders orders);

    /**
     * 根据id查询订单
     * @param id
     * @return
     */
    public Orders getOrders(Integer id);

    /**
     * 修改
     * @param addressId
     * @param id
     * @return
     */
    public Integer submitOrders(Integer addressId, Integer id);

    /**
     * 获取用户订单
     * @param memberId
     * @return
     */
    public List<Orders> getOrdersAll(Integer memberId);
}
