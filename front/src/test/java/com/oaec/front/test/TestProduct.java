package com.oaec.front.test;

import com.oaec.common.dao.ProductMapper;
import com.oaec.common.po.Product;
import com.oaec.front.service.ProductService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class TestProduct {
    private ApplicationContext ctx;

    @Before
    public void before(){
        ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
    }

    @Test
    public void test1(){
        ProductService bean = ctx.getBean(ProductService.class);
        List<Product> products = bean.getProductByC(1);
        System.out.println("products = " + products);
    }
    @Test
    public void test2(){
        ProductMapper bean = ctx.getBean(ProductMapper.class);
        Product product = bean.queryProductById(1);
        System.out.println("product = " + product);
    }


}
