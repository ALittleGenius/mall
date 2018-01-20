package com.oaec.front.test;

import com.oaec.common.dao.AddressMapper;
import com.oaec.common.po.Address;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestAddress {
    private ApplicationContext ctx;

    @Before
    public void before(){
        ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
    }

    @Test
    public void test1(){
        AddressMapper bean = ctx.getBean(AddressMapper.class);
        Address address = bean.getAddress(null);
        System.out.println("address = " + address);
    }
}
