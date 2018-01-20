package com.oaec.front.controller;

import com.alibaba.fastjson.JSONObject;

import com.oaec.common.po.Member;
import com.oaec.common.po.MemberCar;
import com.oaec.front.service.MemberCarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/car")
public class MemberCarController {
    @Autowired
    private MemberCarService memberCarService;

    @RequestMapping(value = "/addCar",produces = "application/json;charset=utf-8")
    @ResponseBody
    public String addCar(MemberCar memberCar, HttpSession session){
        if(memberCar.getNumber()==null){
            memberCar.setNumber(1);
        }
        Member member = (Member) session.getAttribute("member");
        memberCar.setMemberId(member.getId());
        System.out.println("memberCar = " + memberCar);
        Integer integer = memberCarService.addProductToCar(memberCar);
        System.out.println("integer = " + integer);
        JSONObject jsonObject = new JSONObject();
        if(integer>0){
            //添加成功
            jsonObject.put("msg",true);
        }else{
            //添加失败
            jsonObject.put("msg",false);
        }
        return jsonObject.toJSONString();
    }
    @RequestMapping("/getCar")
    public ModelAndView getCar(HttpSession session){
        Member member = (Member) session.getAttribute("member");
        List<Map<String, Object>> carByMId = memberCarService.getCarByMId(member.getId());
        System.out.println("carByMId = " + carByMId);
        ModelAndView modelAndView = new ModelAndView("cart");
        modelAndView.addObject("productList",carByMId);
        return modelAndView;
    }
    @ResponseBody
    @RequestMapping(value = "/remove",produces = "application/json;charset=utf-8")
    public String removeCar(Integer id){
        Integer integer = memberCarService.removeCar(id);
        JSONObject jsonObject = new JSONObject();
        if(integer>0){
            jsonObject.put("msg",true);
        }else{
            jsonObject.put("msg",false);
        }
        return jsonObject.toJSONString();
    }
    @ResponseBody
    @RequestMapping(value = "/setCarNumber",produces = "application/json;charset=utf-8")
    public String setCarNumber(Integer id,Integer number){
        Integer integer = memberCarService.setCarNumber(id, number);
        JSONObject jsonObject = new JSONObject();
        if(integer>0){
            jsonObject.put("msg",true);
        }else{
            jsonObject.put("msg",false);
        }
        return jsonObject.toJSONString();
    }
}
