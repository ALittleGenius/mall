package com.oaec.front.service.impl;


import com.oaec.common.dao.OrdersMapper;
import com.oaec.common.po.Orders;
import com.oaec.common.po.OrdersDetail;
import com.oaec.front.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("ordersService")
public class OrdersServiceImpl implements OrdersService {
    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private OrdersMapper ordersMapper;
    @Override
    public Integer addOrders(Orders orders) {
        Integer integer = ordersMapper.doInsert(orders);
        List<OrdersDetail> ordersDetails = orders.getOrdersDetails();
        for (OrdersDetail ordersDetail:ordersDetails) {
            ordersDetail.setOrdersId(orders.getId());
        }
        Integer integer1 = ordersMapper.doInsertOrderDetail(ordersDetails);
        return integer+integer1;
    }

    @Override
    public Orders getOrders(Integer id) {
        return ordersMapper.queryById(id);
    }

    @Override
    public Integer submitOrders(Integer addressId, Integer id) {
        return ordersMapper.doUpdate(id,addressId);
    }

    @Override
    public List<Orders> getOrdersAll(Integer memberId) {
        return ordersMapper.queryByMId(memberId);
    }
}
