package com.oaec.mall.po;

import java.sql.Timestamp;
import java.util.Date;

public class Comment {
    private Integer id;
    private Integer productId;
    private Integer memberId;
    private String comment;
    private Integer grade;
    private Date createTime;
    private String reply;
    private String name;
    private String headSculpture;

    @Override
    public String toString() {
        return "Comment{" +
                "id=" + id +
                ", productId=" + productId +
                ", memberId=" + memberId +
                ", comment='" + comment + '\'' +
                ", grade=" + grade +
                ", createTime=" + createTime +
                ", reply='" + reply + '\'' +
                ", name='" + name + '\'' +
                ", headSculpture='" + headSculpture + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public Integer getMemberId() {
        return memberId;
    }

    public void setMemberId(Integer memberId) {
        this.memberId = memberId;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getReply() {
        return reply;
    }

    public void setReply(String reply) {
        this.reply = reply;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getHeadSculpture() {
        return headSculpture;
    }

    public void setHeadSculpture(String headSculpture) {
        this.headSculpture = headSculpture;
    }
}
