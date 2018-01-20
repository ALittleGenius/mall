package com.oaec.front.listener;


import com.oaec.common.po.Category;
import com.oaec.front.service.CategoryService;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.util.List;

@WebListener
public class IndexListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        //监听初始化
        WebApplicationContext applicationContext = WebApplicationContextUtils.getWebApplicationContext(servletContextEvent.getServletContext());
        //
        CategoryService categoryService = applicationContext.getBean(CategoryService.class);
        //
        List<Category> category = categoryService.getCategory();
        //
        ServletContext servletContext = servletContextEvent.getServletContext();
        //获取分类
        servletContext.setAttribute("category",category);
        System.out.println("category = " + category);
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        //监听销毁
    }
}
