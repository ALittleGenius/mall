package com.oaec.front.controller;

import com.alibaba.fastjson.JSONObject;
import com.oaec.common.po.Address;
import com.oaec.common.po.Member;
import com.oaec.front.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/address")
public class AddressController {
    @Autowired
    private AddressService addressService;

    @RequestMapping("/getAddressAll")
    public String getAddressAll(Map<String,Object> map,HttpSession session){
        Member member = (Member) session.getAttribute("member");
        List<Address> addressAll = addressService.getAddressAll(member.getId());
        map.put("addressAll",addressAll);
        return "address";
    }
    @RequestMapping("/getAddressFrom")
    public String getAddressFrom(Integer id,Map<String,Object> map){
        if(id != null) {
            Address address = addressService.getAddress(id);
            map.put("address",address);
        }
        return "addressAddOrUpdate";
    }
    @ResponseBody
    @RequestMapping(value = "/deleteAddress",produces = "application/json;charset=utf-8")
    public String deleteAddress(Integer id){
        Integer integer = addressService.deleteAddress(id);
        JSONObject jsonObject = new JSONObject();
        if(integer > 0){
            jsonObject.put("msg",true);
        }else {
            jsonObject.put("msg",false);
        }
        return jsonObject.toJSONString();
    }
    @RequestMapping("addressAddOrUpdate")
    public String addressAddOrUpdate(Address address,HttpSession session){
        System.out.println("address = " + address);
        Member member = (Member) session.getAttribute("member");
        if(address.getId() == null || "".equals(address.getId())){
            //添加
            //如果类型为null，则把类型改为1
            if(address.getType()==null){
                address.setType(1);
            }else {
                //类型为2，表示设为默认地址，把之前的默认地址设为1
                Address addressDefault = addressService.getAddressDefault(member.getId());
                addressService.setAddressType(addressDefault.getId(),1);
            }
            Integer integer = addressService.addAddress(address);
        }else {
            //修改
            if(address.getType()==2){
                //表示修改为了默认地址，把之前的默认地址设为1
                Address addressDefault = addressService.getAddressDefault(member.getId());
                addressService.setAddressType(addressDefault.getId(),1);
            }
            Integer integer = addressService.setAddress(address);
        }

        return "redirect:/address/getAddressAll";
    }
}
