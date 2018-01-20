package com.oaec.common.po;

public class MemberCar {
    private Integer id;
    private Integer memberId;
    private Integer productId;
    private Integer number;
    private Integer state;
    private Product products;

    @Override
    public String toString() {
        return "MemberCar{" +
                "id=" + id +
                ", memberId=" + memberId +
                ", productId=" + productId +
                ", number=" + number +
                ", state=" + state +
                ", products=" + products +
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

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Product getProducts() {
        return products;
    }

    public void setProducts(Product products) {
        this.products = products;
    }
}
