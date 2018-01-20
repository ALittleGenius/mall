<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2018/1/19
  Time: 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${pageContext.request.contextPath}" var="path"/>
<!doctype html>
<html lang="en-US">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    <title>付款</title>

    <link rel="stylesheet" href="${path}/static/css/bootstrap.min.css" type="text/css" media="all">
    <link rel="stylesheet" href="${path}/static/css/font-awesome.min.css" type="text/css" media="all" />
    <link rel="stylesheet" href="${path}/static/css/ionicons.min.css" type="text/css" media="all" />
    <link rel="stylesheet" href="${path}/static/css/owl.carousel.css" type="text/css" media="all">
    <link rel="stylesheet" href="${path}/static/css/owl.theme.css" type="text/css" media="all">
    <link rel='stylesheet' href='${path}/static/css/prettyPhoto.css' type='text/css' media='all'>
    <link rel="stylesheet" href="${path}/static/css/style.css" type="text/css" media="all">
    <link rel="stylesheet" href="${path}/static/css/custom.css" type="text/css" media="all">
    <link href="http://fonts.googleapis.com/css?family=Great+Vibes%7CLato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <!--<script src="http://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>-->
    <%--<script src="http://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>--%>
    <![endif]-->

</head>
<body>



<jsp:include page="common/head1.jsp"/>
<div class="site">
    <jsp:include page="common/head.jsp"/>
    <div id="main">
        <div class="section section-bg-10 pt-11 pb-17">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <h2 class="page-title text-center">订单</h2>
                    </div>
                </div>
            </div>
        </div>

        <div class="section pt-7 pb-7">
            <div class="container" >
                <div class="row"  >
                    <%--遍历订单--%>
                    <div class="col-md-8"  >
                        <h2>我的订单</h2>
                        <c:forEach var="orders" items="${requestScope.ordersAll}">
                            <c:set var="prices" value="0"/>
                            <c:set var="numbers" value="0"/>
                        <table class="table shop-cart" style="width: 800px; margin: 0 auto" >
                            <thead>
                                <tr style="border: 0.5px solid #EEEEEE">
                                    <th>订单号：${orders.id}</th>
                                    <th></th>
                                    <th></th>
                                    <th style="text-align: right">时间：${orders.createTime}</th>
                                </tr>
                            </thead>
                            <c:forEach var="ordersDetail" items="${orders.ordersDetails}">
                            <tbody>
                            <%--遍历商品--%>

                                <tr class="cart_item">

                                    <td class="product-thumbnail">
                                        <a href="${path}/product/getProductDetail?id=${ordersDetail.productId}">
                                            <img src="${path}/${ordersDetail.product.image}" alt="">
                                        </a>
                                    </td>
                                    <td class="product-info">
                                        <a href="${path}/product/getProductDetail?id=${ordersDetail.productId}">${ordersDetail.product.name}</a>
                                        <c:if test="${ordersDetail.product.originalPrice != null}">
                                            <del>￥${ordersDetail.product.originalPrice}</del>
                                        </c:if>
                                        <span class="amount">￥${ordersDetail.product.presentPrice}</span>
                                    </td>
                                    <td class="product-quantity">
                                        <div class="quantity">
                                            <input type="text"  name="number" value="${ordersDetail.number}" class="input-text qty text"/>
                                        </div>
                                    </td>
                                    <td class="product-subtotal">
                                        <span class="amount">￥${ordersDetail.prices}</span>
                                    </td>
                                </tr>
                                <c:set var="prices" value="${prices+ordersDetail.prices}"/>
                                <c:set var="numbers" value="${numbers+ordersDetail.number}"/>
                            </tbody>
                            </c:forEach>
                            <tfoot>
                                <tr style="border: 0.5px solid #EEEEEE">

                                    <td></td>
                                    <td>
                                        共${numbers}件
                                    </td>
                                    <td>
                                        总价：${prices}
                                    </td>
                                    <td>
                                        <c:if test="${orders.state==1}">
                                            订单失败
                                        </c:if>
                                        <c:if test="${orders.state == 2}">
                                            订单已完成
                                        </c:if>
                                    </td>
                                </tr>
                            </tfoot>
                        </table>
                        </c:forEach>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <jsp:include page="common/foot.jsp"/>
</div>

<script type="text/javascript" src="${path}/static/js/jquery.min.js"></script>
<script type="text/javascript" src="${path}/static/js/jquery-migrate.min.js"></script>
<script type="text/javascript" src="${path}/static/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${path}/static/js/modernizr-2.7.1.min.js"></script>
<script type="text/javascript" src="${path}/static/js/owl.carousel.min.js"></script>
<script type="text/javascript" src="${path}/static/js/jquery.countdown.min.js"></script>
<script type='text/javascript' src='${path}/static/js/jquery.prettyPhoto.js'></script>
<script type='text/javascript' src='${path}/static/js/jquery.prettyPhoto.init.min.js'></script>
<script type="text/javascript" src="${path}/static/js/script.js"></script>
</body>
</html>
