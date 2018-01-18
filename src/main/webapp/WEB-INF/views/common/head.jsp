
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2018/1/11
  Time: 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${pageContext.request.contextPath}" var="path"/>
<div class="topbar">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="topbar-text">
                    <span>工作时间: 星期一 至 星期五: 上午8:00 - 下午6:00</span>
                    <span>星期六 至 星期天: 上午10:00 - 下午6:00</span>
                </div>
            </div>
            <div class="col-md-6">
                <div class="topbar-menu">
                    <ul class="topbar-menu">
                        <%--<li class="dropdown">
                            <a href="#">语言</a>
                            <ul class="sub-menu">
                                <li><a href="#">中文</a></li>
                                <li><a href="#">英文</a></li>
                            </ul>
                        </li>--%>
                        <script type="text/javascript">
                            function quit() {
                                $.ajax({
                                    url:"${path}/member/quit",
                                    type:'post',
                                    success:function () {
                                        window.location = "/login.jsp";
                                    }

                                });
                            }
                        </script>
                        <%--判断--%>
                        <c:if test="${sessionScope.member == null}">
                            <li><a href="${path}/login.jsp">登录</a></li>
                            <li><a href="${path}/register.jsp">注册</a></li>
                        </c:if>
                        <c:if test="${sessionScope.member != null}">
                            <li><a href="#">我的账户</a></li>
                            <li><a href="javascript:void(0)" onclick="quit()">退出</a> </li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<header id="header" class="header header-desktop header-2">
    <%--商品检索--%>
    <div class="top-search">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <form>
                        <input type="search" class="top-search-input" name="s" placeholder="搜索" />
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <%--logo--%>
            <div class="col-md-3">
                <a href="${path}/index" id="logo">
                    <img class="logo-image" src="${path}/static/images/logo.png" alt="Organik Logo" />
                </a>
            </div>

            <div class="col-md-9">
                <div class="header-right">
                    <%--菜单--%>
                    <nav class="menu">
                        <ul class="main-menu">
                            <li><a href="${path}/index">主页</a></li>
                                <c:forEach items="${applicationScope.category}" var="category">
                                    <li><a href="${path}/product/getProductList?cid=${category.id}">${category.name}</a></li>
                                </c:forEach>
                            <li><a href="contact-us.html">联系我们</a></li>
                            <li><a href="about-us.html">关于我们</a></li>
                        </ul>
                    </nav>
                    <div class="btn-wrap">

                        <%--购物车小列表--%>
                        <div class="mini-cart-wrap">

                            <div class="mini-cart">
                                <div class="mini-cart-icon" data-count="2">
                                    <i class="ion-bag"></i>
                                </div>
                            </div>

                            <div class="widget-shopping-cart-content">
                                <%--购物车商品列表--%>
                                <ul class="cart-list">
                                    <li>
                                        <a href="#" class="remove">×</a>
                                        <a href="${path}/product/getProductDetail">
                                            <img src="${path}/static/images/shop/thumb/shop_1.jpg" alt="" />
                                            Orange Juice&nbsp;
                                        </a>
                                        <span class="quantity">1 × $12.00</span>
                                    </li>
                                    <li>
                                        <a href="#" class="remove">×</a>
                                        <a href="${path}/product/getProductDetail">
                                            <img src="${path}/static/images/shop/thumb/shop_2.jpg" alt="" />
                                            Aurore Grape&nbsp;
                                        </a>
                                        <span class="quantity">1 × $9.00</span>
                                    </li>
                                </ul>

                                <p class="total">
                                    <strong>Subtotal:</strong>
                                    <span class="amount">$21.00</span>
                                </p>
                                <p class="buttons">
                                    <a href="${path}/car/getCar" class="view-cart">查看购物车</a>
                                    <a href="checkout.html" class="checkout">结账</a>
                                </p>
                            </div>
                        </div>

                        <%--搜索提交按钮--%>
                        <div class="top-search-btn-wrap">
                            <div class="top-search-btn">
                                <a href="javascript:void(0);">
                                    <i class="ion-search"></i>
                                </a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<header class="header header-mobile">
    <div class="container">
        <div class="row">
            <div class="col-xs-2">
                <div class="header-left">
                    <div id="open-left"><i class="ion-navicon"></i></div>
                </div>
            </div>
            <div class="col-xs-8">
                <div class="header-center">
                    <a href="${path}/index" id="logo-2">
                        <img class="logo-image" src="${path}/static/images/logo.png" alt="Organik Logo" />
                    </a>
                </div>
            </div>
            <div class="col-xs-2">
                <div class="header-right">
                    <div class="mini-cart-wrap">
                        <a href="">
                            <div class="mini-cart">
                                <div class="mini-cart-icon" data-count="2">
                                    <i class="ion-bag"></i>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
