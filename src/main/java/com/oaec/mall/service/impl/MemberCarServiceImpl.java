package com.oaec.mall.service.impl;

import com.oaec.mall.dao.MemberCarMapper;
import com.oaec.mall.po.MemberCar;
import com.oaec.mall.service.MemberCarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("memberCarService")
public class MemberCarServiceImpl implements MemberCarService {
    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private MemberCarMapper memberCarMapper;


    @Override
    public Integer addProductToCar(MemberCar memberCar) {
        MemberCar memberCar1 = memberCarMapper.queryCar(memberCar);
        Integer integer = 0;
        if(memberCar1 != null){
            integer = memberCarMapper.doUpdate(memberCar);
        }else{
            integer = memberCarMapper.insertProductToCar(memberCar);
        }
        return integer;
    }

    @Override
    public List<Map<String, Object>> getCarByMId(Integer memberId) {
        return memberCarMapper.queryCarByMemberId(memberId);
    }

    @Override
    public Integer removeCar(Integer id) {
        return memberCarMapper.doDelete(id);
    }

    @Override
    public Integer setCarNumber(Integer id,Integer number) {
        return memberCarMapper.doUpdateNumber(id,number);
    }
}
