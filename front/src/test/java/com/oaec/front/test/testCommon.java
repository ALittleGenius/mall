package com.oaec.front.test;

import com.oaec.common.po.Category;
import com.oaec.front.service.CategoryService;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;


public class testCommon {
    @Test
    public void test(){
        ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
        CategoryService bean = ctx.getBean(CategoryService.class);
        List<Category> category = bean.getCategory();
        System.out.println("category = " + category);
    }
}
