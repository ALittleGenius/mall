package com.oaec.front.test;


import com.oaec.common.dao.MemberCarMapper;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MemberCar {
    private ApplicationContext ctx;

    @Before
    public void before(){
        ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
    }
    @Test
    public void test1(){
        MemberCarMapper bean = ctx.getBean(MemberCarMapper.class);
        Integer integer = bean.doUpdateNumber(1, 2);
        System.out.println("integer = " + integer);
    }
}
