package com.oaec.mall.test;

import com.oaec.mall.dao.MemberMapper;
import com.oaec.mall.po.Member;
import com.oaec.mall.service.MemberService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestMember {

    private ApplicationContext ctx;

    @Before
    public void before(){
        ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
    }

    @Test
    public void test1(){
        MemberMapper bean = ctx.getBean(MemberMapper.class);
        Member test = bean.queryMemberByName("test");
        System.out.println("test = " + test);
    }
    @Test
    public void test2(){
        MemberService bean = ctx.getBean(MemberService.class);
        Member member = new Member();
        member.setUsername("李四");
        member.setPassword("123456");
        member.setTel("17862355555");
        int i = bean.register(member);
        System.out.println("i = " + i);
    }
}
