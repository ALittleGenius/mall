package com.oaec.front.service;


import com.oaec.common.po.Address;

import java.util.List;

public interface AddressService {
    public Address getAddress(Integer addressId);

    /**
     * 获取用户的收货地址
     * @param memberId
     * @return
     */
    public List<Address> getAddressAll(Integer memberId);

    /**
     * 获取用户的默认地址
     * @param memberId
     * @return
     */
    public Address getAddressDefault(Integer memberId);

    /**
     * 根据id删除地址
     * @param id
     * @return
     */
    public Integer deleteAddress(Integer id);

    /**
     * 修改地址信息
     * @param address
     * @return
     */
    public Integer setAddress(Address address);

    /**
     * 添加地址
     * @param address
     * @return
     */
    public Integer addAddress(Address address);

    /**
     * 修改地址类型
     * @return
     */
    public Integer setAddressType(Integer id,Integer type);
}
