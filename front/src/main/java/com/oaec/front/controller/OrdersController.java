package com.oaec.front.controller;

import com.alibaba.fastjson.JSONObject;
import com.oaec.common.po.*;
import com.oaec.front.service.AddressService;
import com.oaec.front.service.MemberCarService;
import com.oaec.front.service.OrdersService;
import com.oaec.front.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/orders")
public class OrdersController {
    @Autowired
    private OrdersService ordersService;
    @Autowired
    private MemberCarService memberCarService;
    @Autowired
    private AddressService addressService;
    @Autowired
    private ProductService productService;

    @ResponseBody
    @RequestMapping(value = "/addOrders",produces = "application/json;charset=utf-8")
    public String addOrders(Integer[] carIds,Double[] prices, HttpSession session){
        System.out.println("carIds = [" + Arrays.toString(carIds)+ "], prices = [" + Arrays.toString(prices) + "]" );
        Member member = (Member) session.getAttribute("member");
        Orders orders = new Orders();
        orders.setMemberId(member.getId());
        List<OrdersDetail> ordersDetails = new ArrayList<>();
        JSONObject jsonObject = new JSONObject();
        Integer integer = 0;
        if(carIds != null && prices != null){
            for (int i = 0 ; i<carIds.length;i++){
                MemberCar car = memberCarService.getCarById(carIds[i]);
                OrdersDetail ordersDetail = new OrdersDetail();
                ordersDetail.setProductId(car.getProductId());
                ordersDetail.setNumber(car.getNumber());
                ordersDetail.setPrices(prices[i]);
                ordersDetails.add(ordersDetail);
            }
            orders.setOrdersDetails(ordersDetails);
            integer = ordersService.addOrders(orders);

        }
        if(integer>1){
            for(int i = 0 ;i<carIds.length;i++){
                Integer integer1 = memberCarService.removeCar(carIds[i]);
            }
            jsonObject.put("msg",true);
            jsonObject.put("ordersId",orders.getId());
        }else {
            jsonObject.put("msg",false);
        }

        return jsonObject.toJSONString();
    }

    @RequestMapping("/getOrders")
    public ModelAndView getOrders(Integer ordersId,Integer addressId){
        System.out.println("orderId = " + ordersId);
        ModelAndView modelAndView = new ModelAndView("orders");
        Orders orders = ordersService.getOrders(ordersId);
        Address address = addressService.getAddress(addressId);
        modelAndView.addObject("orders",orders);
        modelAndView.addObject("address",address);
        return modelAndView;
    }
    @ResponseBody
    @RequestMapping(value = "/payment",produces = "application/json;charset=utf-8")
    public String payment(Integer ordersId,Integer addressId){
        JSONObject jsonObject = new JSONObject();
        Integer integer = ordersService.submitOrders(addressId, ordersId);
        Integer integer1=0;
        if(integer>0){
            List<OrdersDetail> ordersDetails = ordersService.getOrders(ordersId).getOrdersDetails();
            for (OrdersDetail ordersDetail:ordersDetails) {
                integer1 = productService.setProduct(ordersDetail.getProductId(), ordersDetail.getNumber());
            }
        }
        if(integer1>0){
            jsonObject.put("msg",true);
        }else{
            jsonObject.put("msg",false);
        }

        return jsonObject.toJSONString();
    }

    @RequestMapping("getOrdersAll")
    public String getOrdersAll(Map<String,Object> map,HttpSession session){
        Member member = (Member) session.getAttribute("member");
        List<Orders> ordersAll = ordersService.getOrdersAll(member.getId());
        map.put("ordersAll",ordersAll);
        System.out.println("map = " + map);
        return "ordersList";
    }
}
