<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2018/1/18
  Time: 11:51
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
    
    <script type="text/javascript">
        function payment(id) {
            var addressId = $("#addressId").val();
            if(!addressId){
                layer.alert('请输入地址！', {
                    icon: 0
//                    skin: 'layer-ext-moon' //该皮肤由layer.seaning.com友情扩展。关于皮肤的扩展规则，去这里查阅
                })
            }else{
                $.ajax({
                    url:'${path}/orders/payment',
                    type:'post',
                    data:{
                        addressId:addressId,
                        ordersId:id
                    },
                    success:function (result) {
                        if(result.msg){
                            window.location.href ='${path}/success.jsp';
                        }
                    }
                });
            }
        }
    </script>
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
            <div class="container">
                <div class="row">


                    <div class="col-md-8">
                        <h2>收货地址</h2>
                        <table class="table shop-cart">
                            <tbody>
                            <%--遍历显示默认地址--%>
                            <tr class="cart_item">
                                <c:if test="${requestScope.address!=null}">
                                    <td class="product-info">
                                        <a>
                                                ${requestScope.address.name}
                                        </a>
                                    </td>
                                    <td class="product-info">
                                        <a >${requestScope.address.tel}</a>
                                            <%--<span class="sub-title">Faucibus Tincidunt</span>
                                            <span class="amount">$2.00</span>--%>
                                    </td>
                                    <td class="product-info">
                                        <div class="quantity">
                                                ${requestScope.address.address}
                                        </div>
                                    </td>
                                    <td class="product-subtotal">
                                        <span class="amount">${requestScope.address.ZIP}</span>
                                    </td>
                                    <td>
                                        <a>选择></a>
                                    </td>
                                </c:if>
                                <c:if test="${requestScope.address == null}">
                                    <td>添加收货地址</td>
                                </c:if>
                            </tr>

                            </tbody>
                        </table>
                    </div>


                    <div class="col-md-8">
                        <h2>我的订单</h2>
                        <table class="table shop-cart">
                            <tbody>
                            <%--遍历商品--%>
                            <c:forEach var="ordersDetail" items="${requestScope.orders.ordersDetails}">
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
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-md-4">
                        <div class="cart-totals">
                            <table>
                                <tbody>
                                <tr class="cart-subtotal">
                                    <th>小计</th>
                                    <td>￥${prices}</td>
                                </tr>
                                <tr class="shipping">
                                    <th>Shipping</th>
                                    <td>Free Shipping</td>
                                </tr>
                                <tr class="order-total">
                                    <th>总</th>
                                    <td><strong>￥${prices}</strong></td>
                                </tr>
                                </tbody>
                            </table>
                            <div class="proceed-to-checkout">
                                <input type="hidden" id="addressId" value="${requestScope.address.id}"/>
                                <a href="#" onclick="payment(${requestScope.orders.id})">下订单</a>
                            </div>
                        </div>

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