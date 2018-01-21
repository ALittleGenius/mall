package com.oaec.common.dao;

import com.oaec.common.po.Address;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AddressMapper {
    /**
     * 查询地址
     * @param id
     * @return
     */
    public Address getAddress(@Param("id") Integer id);

    /**
     * 获取用户默认地址
     * @param memberId
     * @return
     */
    public Address getAddressDefault(Integer memberId);

    /**
     * 获取用户收货地址
     * @param memberId
     * @return
     */
    public List<Address> getAddressAll(Integer memberId);

    /**
     * 根据id删除地址
     * @param id
     * @return
     */
    public Integer deleteAddress(Integer id);

    /**
     * 根据id修改地址信息
     * @param address
     * @return
     */
    public Integer updateAddress(Address address);

    /**
     * 添加地址
     * @param address
     * @return
     */
    public Integer insertAddress(Address address);


    /**
     * 修改地址类型
     * @param id
     * @return
     */
    public Integer updateType(@Param("id") Integer id,@Param("type") Integer type);
}
