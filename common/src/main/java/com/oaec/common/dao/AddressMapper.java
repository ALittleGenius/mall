package com.oaec.common.dao;

import com.oaec.common.po.Address;
import org.apache.ibatis.annotations.Param;

public interface AddressMapper {
    /**
     * 查询地址
     * @param id
     * @return
     */
    public Address getAddress(@Param("id") Integer id);
}
