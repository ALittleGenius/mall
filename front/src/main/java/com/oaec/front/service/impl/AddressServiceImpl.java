package com.oaec.front.service.impl;


import com.oaec.common.dao.AddressMapper;
import com.oaec.common.po.Address;
import com.oaec.front.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("addressService")
public class AddressServiceImpl implements AddressService {
    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private AddressMapper addressMapper;

    @Override
    public Address getAddress(Integer addressId) {
        return addressMapper.getAddress(addressId);
    }
}
