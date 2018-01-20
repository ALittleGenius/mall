package com.oaec.front.controller;


import com.oaec.common.po.Product;
import com.oaec.front.service.MemberCarService;
import com.oaec.front.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class IndexController {
    @Autowired
    private ProductService productService;
    @Autowired
    private MemberCarService memberCarService;

    @RequestMapping("/index")
    public String index(Map<String ,Object> map, HttpSession session){
        List<Product> fruits = productService.getProductByC(1);
        map.put("fruits",fruits);
        List<Product> vegetables = productService.getProductByC(2);
        map.put("vegetables",vegetables);
        List<Product> juices = productService.getProductByC(3);
        map.put("juices",juices);
        List<Product> dried = productService.getProductByC(4);
        map.put("dried",dried);
        /*Member member = (Member) session.getAttribute("member");
        if(member != null){
            List<Map<String, Object>> carByMId = memberCarService.getCarByMId(member.getId());
            int size = carByMId.size();
            map.put("car",carByMId);
            map.put("size",size);
        }*/

        return "index";
    }

}
