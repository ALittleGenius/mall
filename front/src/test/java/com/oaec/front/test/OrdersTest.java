package com.oaec.front.test;

import com.oaec.common.dao.OrdersMapper;
import com.oaec.common.po.Orders;
import com.oaec.common.po.OrdersDetail;
import com.oaec.common.po.Product;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class OrdersTest {
    private ApplicationContext ctx;

    @Before
    public void before(){
        ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
    }


    @Test
    public void test1(){
        OrdersMapper bean = ctx.getBean(OrdersMapper.class);
        Orders orders = new Orders();
        orders.setMemberId(2);
        Integer integer = bean.doInsert(orders);
        System.out.println("integer = " + integer);
        System.out.println(orders.getId());
    }
    @Test
    public void test2(){
        OrdersMapper bean = ctx.getBean(OrdersMapper.class);
        Orders orders = bean.queryById(5);
        System.out.println("orders = " + orders);
        List<OrdersDetail> ordersDetails = orders.getOrdersDetails();
        for (OrdersDetail ordersDetail:ordersDetails) {
            System.out.println("ordersDetail = " + ordersDetail);
            System.out.println("ordersDetail.getProduct() = " + ordersDetail.getProduct());
            Product product = ordersDetail.getProduct();
            String image = product.getImage();
            System.out.println("image = " + image);
        }
    }
    @Test
    public void test3(){
        OrdersMapper bean = ctx.getBean(OrdersMapper.class);
        List<Orders> orders = bean.queryByMId(1);
        System.out.println("orders = " + orders);
    }
}
