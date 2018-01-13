package com.oaec.mall.controller;

import com.alibaba.fastjson.JSONObject;
import com.oaec.mall.po.Member;
import com.oaec.mall.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/member")
public class MemberController {
    @Autowired
    private MemberService memberService;

    @RequestMapping(value = "login" ,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String login(String name, String password, HttpSession session){
        Member login = memberService.login(name);
        JSONObject jsonObject = new JSONObject();
        if(login == null){
            jsonObject.put("msg",false);
            jsonObject.put("error","该用户不存在！");
        }else{
            if (!password.equals(login.getPassword())){
                jsonObject.put("msg",false);
                jsonObject.put("error","密码错误！");
            }else{
                session.setAttribute("member",login);
                jsonObject.put("msg",true);
            }
        }
        return jsonObject.toJSONString();
    }
    @RequestMapping(value = "/register",produces = "application/json;charser=utf-8")
    @ResponseBody
    public String register(String name,String password,String tel){
        Member member = new Member(name,password,tel);
        int register = memberService.register(member);
        JSONObject jsonObject = new JSONObject();
        if(register>0){
            jsonObject.put("msg",true);
        }else{
            jsonObject.put("msg",false);
        }
        return jsonObject.toJSONString();
    }
    @ResponseBody
    @RequestMapping(value = "/getUsername",produces = "application/json;charset=utf-8")
    public String getUsername(String username){
        Member login = memberService.login(username);
        JSONObject jsonObject = new JSONObject();
        if(login == null){
            jsonObject.put("msg",true);
        }else{
            jsonObject.put("msg",false);
        }
        return jsonObject.toJSONString();
    }
    @ResponseBody
    @RequestMapping(value = "/getTel",produces = "application/json;charset=utf-8")
    public String getTel(String tel){
        System.out.println("tel = " + tel);
        Member memberByTel = memberService.getMemberByTel(tel);
        System.out.println("memberByTel = " + memberByTel);
        JSONObject jsonObject = new JSONObject();
        if(memberByTel == null){
            jsonObject.put("msg",true);
        }else{
            jsonObject.put("msg",false);
        }
        return jsonObject.toJSONString();
    }


    @RequestMapping("/quit")
    @ResponseBody
    public void quit(HttpSession session){
        session.invalidate();
    }
}
