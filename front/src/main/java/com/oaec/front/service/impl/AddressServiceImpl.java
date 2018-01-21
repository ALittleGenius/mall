package com.oaec.front.service.impl;


import com.oaec.common.dao.AddressMapper;
import com.oaec.common.po.Address;
import com.oaec.front.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("addressService")
public class AddressServiceImpl implements AddressService {
    @SuppressWarnings("SpringJavaAutowiringInspection")
    @Autowired
    private AddressMapper addressMapper;

    @Override
    public Address getAddress(Integer addressId) {
        return addressMapper.getAddress(addressId);
    }

    @Override
    public List<Address> getAddressAll(Integer memberId) {
        return addressMapper.getAddressAll(memberId);
    }

    @Override
    public Address getAddressDefault(Integer memberId) {
        return addressMapper.getAddressDefault(memberId);
    }

    @Override
    public Integer deleteAddress(Integer id) {
        return addressMapper.deleteAddress(id);
    }

    @Override
    public Integer setAddress(Address address) {
        return addressMapper.updateAddress(address);
    }

    @Override
    public Integer addAddress(Address address) {
        return addressMapper.insertAddress(address);
    }

    @Override
    public Integer setAddressType(Integer id, Integer type) {
        return addressMapper.updateType(id, type);
    }
}
