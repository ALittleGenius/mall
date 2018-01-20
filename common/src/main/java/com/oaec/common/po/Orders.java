package com.oaec.common.po;

import java.sql.Timestamp;
import java.util.List;

public class Orders {
    private Integer id ;
    private Integer memberId;
    private Timestamp createTime;
    private Integer addressId;
    private List<OrdersDetail> ordersDetails;
    private Address address;
    private Integer state;

    @Override
    public String toString() {
        return "Orders{" +
                "id=" + id +
                ", memberId=" + memberId +
                ", createTime=" + createTime +
                ", addressId=" + addressId +
                ", ordersDetails=" + ordersDetails +
                ", address=" + address +
                ", state=" + state +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMemberId() {
        return memberId;
    }

    public void setMemberId(Integer memberId) {
        this.memberId = memberId;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    public Integer getAddressId() {
        return addressId;
    }

    public void setAddressId(Integer addressId) {
        this.addressId = addressId;
    }

    public List<OrdersDetail> getOrdersDetails() {
        return ordersDetails;
    }

    public void setOrdersDetails(List<OrdersDetail> ordersDetails) {
        this.ordersDetails = ordersDetails;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}
