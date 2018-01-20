
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
                                        window.location = "${path}/login.jsp";
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
                    <form action="${path}/product/getProductLike" method="post">
                        <input type="search" class="top-search-input" name="like" placeholder="搜索" />
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
                                <div class="mini-cart-icon" data-count="${requestScope.size}">
                                    <i class="ion-bag"></i>
                                </div>
                            </div>

                            <div class="widget-shopping-cart-content">
                                <%--购物车商品列表--%>
                                <ul class="cart-list">
                                    <c:forEach var="car" items="${requestScope.car}">
                                    <li>
                                        <a href="#" class="remove" onclick="removes(${car.id})">×</a>
                                        <a href="${path}/product/getProductDetail">
                                            <img src="${path}/${car.image}" alt="" />
                                            ${car.name}&nbsp;
                                        </a>
                                        <span class="quantity">${car.number} × ￥${car.presentPrice}</span>
                                    </li>
                                        <input type="hidden" name="carId" value="${car.id}">
                                        <input type="hidden" name="prices" value="${car.number * car.presentPrice}">
                                        <c:set var="prices" value="${prices+car.number*car.presentPrice}"/>
                                    </c:forEach>
                                </ul>
                                <p class="total">
                                    <strong>小计:</strong>
                                    <span class="amount">￥${prices}</span>
                                </p>
                                <p class="buttons">
                                    <a href="${path}/car/getCar" class="view-cart">查看购物车</a>
                                    <a href="#" onclick="pay()" class="checkout">结账</a>
                                </p>
                            </div>
                        </div>
                        <script type="text/javascript">
                            function pay() {

                                var carIds=[];
                                var prices = [];
                                $("input[name='carId']").each(function () {
                                    carIds.push($(this).val());
                                    prices.push($(this).next().val());
                                });
                                if(carIds.length){
                                    console.log("aaa");
                                    $.ajax({
                                        url:"${path}/orders/addOrders",
                                        type:'post',
                                        data:{
                                            carIds:carIds,
                                            prices:prices
                                        },
                                        traditional:true,//解决传递数组时出现的问题
                                        success:function (result) {
                                            if(result.msg){
                                                window.location = "${path}/orders/getOrders?ordersId="+result.ordersId;
                                            }else {
                                                alert("操作失败！");
                                            }
                                        },
                                        error:function () {
                                            alert("404");
                                        }
                                    });
                                }else{
                                    console.log("bbb");
                                    layer.alert('请添加商品!', {
                                        icon: 0
                                    })

                                }

                            }

                            function removes(id) {
                                $.ajax({
                                    url:"${path}/car/remove",
                                    type:"post",
                                    data:{
                                        id:id
                                    },
                                    success:function (result) {
                                        if(result.msg){
                                            location.reload();
                                        }else{
                                            alert("404,删除失败");
                                        }
                                    },
                                    error:function (result) {
                                        alert("404");
                                    }
                                });
                            }
                            function search() {
                                console.log("aaaa");
                            }
                        </script>
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
                        <a href="${path}/car/getCar">
                            <div class="mini-cart">
                                <div class="mini-cart-icon" data-count="${requestScope.size}">
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
