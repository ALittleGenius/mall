package com.oaec.common.dao;


import com.oaec.common.po.Orders;
import com.oaec.common.po.OrdersDetail;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrdersMapper {
    /**
     * 创建订单
     * @param orders
     * @return
     */
    public Integer doInsert(Orders orders);

    /**
     * 给订单添加商品
     * @param ordersDetail
     * @return
     */
    public Integer doInsertOrderDetail(List<OrdersDetail> ordersDetail);

    /**
     * 根据id查询
     * @param id
     * @return
     */
    public Orders queryById(Integer id);

    /**
     * 修改订单地址和状态
     * @param id
     * @param addressId
     * @return
     */
    public Integer doUpdate(@Param("id") Integer id, @Param("addressId") Integer addressId);

    /**
     * 根据用户id查询订单
     * @param memberId
     * @return
     */
    public List<Orders> queryByMId(Integer memberId);
}
