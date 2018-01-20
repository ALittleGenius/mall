package com.oaec.common.po;

public class OrdersDetail {
    private Integer id;
    private Integer ordersId;
    private Integer productId;
    private Integer number;
    private Double prices;
    private Product product;

    @Override
    public String toString() {
        return "OrdersDetail{" +
                "id=" + id +
                ", ordersId=" + ordersId +
                ", productId=" + productId +
                ", number=" + number +
                ", prices=" + prices +
                ", product=" + product +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getOrdersId() {
        return ordersId;
    }

    public void setOrdersId(Integer ordersId) {
        this.ordersId = ordersId;
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

    public Double getPrices() {
        return prices;
    }

    public void setPrices(Double prices) {
        this.prices = prices;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
