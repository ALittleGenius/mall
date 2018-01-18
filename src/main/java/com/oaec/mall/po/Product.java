package com.oaec.mall.po;

import java.util.List;

public class Product {
    private Integer id;
    private Integer cid;
    private String name;
    private String details;
    private Double presentPrice;
    private Double originalPrice;
    private Double inventory;
    private Double salesVolume;
    private String image;
    private Integer status;
    private String category;
    private List<Img> imgs;
    private List<Comment> comments;

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", cid=" + cid +
                ", name='" + name + '\'' +
                ", details='" + details + '\'' +
                ", presentPrice=" + presentPrice +
                ", originalPrice=" + originalPrice +
                ", inventory=" + inventory +
                ", salesVolume=" + salesVolume +
                ", image='" + image + '\'' +
                ", status=" + status +
                ", category='" + category + '\'' +
                ", imgs=" + imgs +
                ", comments=" + comments +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public Double getPresentPrice() {
        return presentPrice;
    }

    public void setPresentPrice(Double presentPrice) {
        this.presentPrice = presentPrice;
    }

    public Double getOriginalPrice() {
        return originalPrice;
    }

    public void setOriginalPrice(Double originalPrice) {
        this.originalPrice = originalPrice;
    }

    public Double getInventory() {
        return inventory;
    }

    public void setInventory(Double inventory) {
        this.inventory = inventory;
    }

    public Double getSalesVolume() {
        return salesVolume;
    }

    public void setSalesVolume(Double salesVolume) {
        this.salesVolume = salesVolume;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public List<Img> getImgs() {
        return imgs;
    }

    public void setImgs(List<Img> imgs) {
        this.imgs = imgs;
    }

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }
}
