package com.oaec.mall.controller;

import com.oaec.mall.po.Product;
import com.oaec.mall.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import java.util.List;
import java.util.Map;

@Controller
public class IndexController {
    @Autowired
    private ProductService productService;

    @RequestMapping("/index")
    public String index(Map<String ,Object> map){
        List<Product> fruits = productService.getProductByC(1);
        map.put("fruits",fruits);
        List<Product> vegetables = productService.getProductByC(2);
        map.put("vegetables",vegetables);
        List<Product> juices = productService.getProductByC(3);
        map.put("juices",juices);
        List<Product> dried = productService.getProductByC(4);
        map.put("dried",dried);

        return "index";
    }

}
