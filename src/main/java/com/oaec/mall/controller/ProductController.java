package com.oaec.mall.controller;

import com.alibaba.druid.util.StringUtils;
import com.oaec.mall.po.Comment;
import com.oaec.mall.po.Product;
import com.oaec.mall.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/product")
public class ProductController {
    @Autowired
    private ProductService productService;

    @RequestMapping("/getProductList")
    public ModelAndView getProductList(Integer cid, String name, Integer page, Integer rows){
        if (page == null){
            page = 1;
        }
        if (rows == null){
            rows = 9;
        }
        Map<String, Object> map = new HashMap<>();
        map.put("cid",cid);
        map.put("name", StringUtils.isEmpty(name)? null : name);
        //获取一共有多少条
        Integer countByCid = productService.getCountByCid(map);
        map.put("start",(page - 1) * rows);
        map.put("rows",rows);
        //获取查询的商品信息
        List<Product> productByCid = productService.getProductByCid(map);
        //获取全部商品的销量前五
        List<Product> productTop = productService.getProductTop();
        ModelAndView modelAndView = new ModelAndView("productList");
        modelAndView.addObject("product",productByCid);
        modelAndView.addObject("productCount",countByCid);
        modelAndView.addObject("productShowCount",productByCid.size());
        modelAndView.addObject("productTop",productTop);
        return modelAndView;
    }

    @RequestMapping("/getProductDetail")
    public ModelAndView getProductDetail(Integer id){
        System.out.println("id = " + id);
        Product productDetail = productService.getProductDetail(id);
        //商品评论条数
        List<Comment> comments = productDetail.getComments();
        int size = comments.size();
        int i = 0;
        if(size > 0){
            for (Comment comment:comments) {
                Integer grade = comment.getGrade();
                i = i+grade;
            }
            i = i/size;
        }
        List<Product> productByC = productService.getProductByC(productDetail.getCid());
        ModelAndView modelAndView = new ModelAndView("productDetail");
        modelAndView.addObject("productDetail",productDetail);
        modelAndView.addObject("commentSize",size);
        modelAndView.addObject("grade",i);
        modelAndView.addObject("like",productByC);
        return modelAndView;
    }


}
