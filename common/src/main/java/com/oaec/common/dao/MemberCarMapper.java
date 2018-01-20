package com.oaec.common.dao;


import com.oaec.common.po.MemberCar;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface MemberCarMapper {

    /**
     * 给购物车添加商品
     * @param memberCar
     * @return
     */
    public Integer insertProductToCar(MemberCar memberCar);

    /**
     * 查询购物车
     * @param memberCar
     * @return
     */
    public MemberCar queryCar(MemberCar memberCar);

    /**
     * 修改购车商品数量
     * @param memberCar
     * @return
     */
    public Integer doUpdate(MemberCar memberCar);

    /**
     * 查询用户购物车
     * @param memberId
     * @return
     */
    public List<Map<String ,Object>> queryCarByMemberId(Integer memberId);

    /**
     * 删除购物车
     * @param id
     * @return
     */
    public Integer doDelete(Integer id);

    public Integer doUpdateNumber(@Param("id") Integer id, @Param("number") Integer number);

    /**
     * 根据id查询购物车
     * @param id
     * @return
     */
    public MemberCar queryCarById(Integer id);
}
