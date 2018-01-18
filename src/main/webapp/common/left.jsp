<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2018/1/15
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${pageContext.request.contextPath}" var="path"/>

<jsp:include page="head-js.jsp"/>

<div class="col-md-3 col-md-pull-9">
    <div class="sidebar">
        <%--商品检索--%>
        <div class="widget widget-product-search">
            <form class="form-search" action="${path}/product/getProductList" method="post">
                <input type="text" class="search-field" placeholder="Search products…" value="" name="name" />
                <input type="submit" value="搜索" />
            </form>
        </div>
        <%--商品分类--%>
        <div class="widget widget-product-categories">
            <h3 class="widget-title">产品类别</h3>
            <ul class="product-categories">
                <c:forEach var="category" items="${applicationScope.category}">
                    <li>
                        <a href="${path}/product/getProductList?cid=${category.id}">${category.name}</a>
                        <span class="count">${category.productCount}</span></li>
                </c:forEach>
            </ul>
        </div>
        <%--根据价格过滤--%>
        <%--<div class="widget widget_price_filter">
            <h3 class="widget-title">根据价格过滤</h3>
            <div class="price_slider_wrapper">
                <div class="price_slider" style="display:none;"></div>
                <div class="price_slider_amount">
                    <input type="text" id="min_price" name="min_price" value="" data-min="0" placeholder="Min price">
                    <input type="text" id="max_price" name="max_price" value="" data-max="150" placeholder="Max price">
                    <button type="submit" class="button">过滤</button>
                    <div class="price_label" style="display:none;">
                        价格: <span class="from"></span> &mdash; <span class="to"></span>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>--%>
        <%--产品--%>
        <div class="widget widget-products">
            <h3 class="widget-title">制品</h3>
            <ul class="product-list-widget">
                <c:forEach items="${requestScope.productTop}" var="product">
                    <li>
                        <a href="shop-detail.html">
                            <img src="${path}/${product.image}" alt="" />
                            <span class="product-title">${product.name}</span>
                        </a>
                        <c:if test="${product.originalPrice != null}">
                            <del>￥${product.originalPrice}</del>
                        </c:if>
                        <ins>￥${product.presentPrice}</ins>
                    </li>
                </c:forEach>

            </ul>
        </div>
        <div class="widget widget-tags">
            <h3 class="widget-title">产品标签</h3>
            <div class="tagcloud">
                <a href="#">bread</a>
                <a href="#">food</a>
                <a href="#">fruits</a>
                <a href="#">green</a>
                <a href="#">healthy</a>
                <a href="#">natural</a>
                <a href="#">organic store</a>
                <a href="#">vegatable</a>
            </div>
        </div>
    </div>
</div>
