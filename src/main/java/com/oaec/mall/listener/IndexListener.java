package com.oaec.mall.listener;

import com.oaec.mall.po.Category;
import com.oaec.mall.service.CategoryService;
import org.apache.log4j.Logger;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.List;

public class IndexListener implements ServletContextListener {
    private static Logger  LOGGER = Logger.getLogger(IndexListener.class);
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        //监听初始化
        try {
            CategoryService categoryService = WebApplicationContextUtils.getWebApplicationContext(servletContextEvent.getServletContext()).getBean(CategoryService.class);
            List<Category> category = categoryService.getCategory();
            ServletContext servletContext = servletContextEvent.getServletContext();
            System.out.println("category = " + category);
            //获取分类
            servletContext.setAttribute("category",category);
        }catch (Exception e){
            e.printStackTrace();
            LOGGER.info(e.toString());
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        //监听销毁
    }
}
