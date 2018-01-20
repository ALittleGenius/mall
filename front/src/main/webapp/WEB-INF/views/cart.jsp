<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2018/1/16
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set value="${pageContext.request.contextPath}" var="path"/>
<!doctype html>
<html lang="en-US">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    <title>购物车</title>

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
    <!--[if lt IE 9]-->
    <%--<script src="http://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>--%>
    <!--<script src="http://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>-->
    <![endif]-->
    <script type="text/javascript" src="${path}/static/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript">
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
        function updateNumber(id,num) {

            console.log("num:"+num);
            console.log("id:"+id);

            var number = num.val();
            console.log("number:"+number);

            var price = num.prev().val();
            console.log("price:"+price);

            var totals = num.val()*price;
            console.log("tolal:"+totals);

            $.ajax({
                url:"${path}/car/setCarNumber",
                type:'post',
                data:{
                    id:id,
                    number:num.val()
                },
                success:function () {
                    num.parents("td").next().children("span").text(totals.toFixed(2));
                },
                error:function () {
                    alert("404");
                }
            });
        }

        $(function () {
            $("input[name='carIds']").click(function () {
                var prices = 0;
                $("#all").prop("checked",true);
                $("input[name='carIds']").each(function () {
                    if(!$(this)[0].checked){
                        $("#all").prop("checked",false);
                    }
                    if($(this)[0].checked){
                        var price = $(this).parent().prev().children("span").text();
                        price = parseFloat(price);
                        prices = prices+price;
                    }
                });
                $(".totals").text("￥"+prices);
            });
            $("#all").click(function () {
                $("input[name='carIds']").prop("checked",$(this).prop("checked"));
                var prices = 0;
                $("input[name='carIds']:checked").each(function () {
                    if($(this)[0].checked){
                        var price = $(this).parent().prev().children("span").text();
                        price = parseFloat(price);
                        prices = prices+price;
                    }
                });
                $(".totals").text("￥"+prices);
            });
        });

        function payAll(){
            if(!$("input[name = 'carIds']:checked").length){
                alert("请选择商品！");
            }else{
                var carIds = [];
                var prices = [];
                $("input[name = 'carIds']:checked").each(function () {
                    carIds.push($(this).val());
                    prices.push($(this).parent().prev().children("span").text());
                });
                console.log("carIds:"+carIds);
                console.log("prices:"+prices);
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
            }
        }
        function update() {
            location.reload();
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
                        <h2 class="page-title text-center">购物车</h2>
                    </div>
                </div>
            </div>
        </div>
        <%--<div class="section border-bottom pt-2 pb-2">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <ul class="breadcrumbs">
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Shop</a></li>
                            <li>Cart</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>--%>
        <div class="section pt-7 pb-7">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <table class="table shop-cart">
                            <tbody>
                            <%--购物车商品--%>
                            <c:forEach items="${requestScope.productList}" var="product">
                            <tr class="cart_item">
                                <td class="product-remove">
                                    <a href="javascript:void(0)" onclick="removes(${product.id})" class="remove">×</a>
                                </td>
                                <td class="product-thumbnail">
                                    <a href="${path}/product/getProductDetail?id=${product.id}">
                                        <img src="${path}/${product.image}" alt="">
                                    </a>
                                </td>
                                <td class="product-info">
                                    <a href="${path}/product/getProductDetail?id=${product.carId}">${product.name}</a>
                                    <%--<span class="sub-title">Faucibus Tincidunt</span>--%>
                                    <c:if test="${product.originalPrice != null}">
                                    <del>￥${product.originalPrice}</del>
                                    </c:if>
                                    <span class="amount">￥${product.presentPrice}</span>
                                </td>
                                <td class="product-quantity">
                                    <div class="quantity">
                                        <input type="hidden" value="${product.presentPrice}"/>
                                        <input id="qty-1" onclick="updateNumber(${product.carId},$(this))" type="number" min="1" name="number" value="${product.number}" class="input-text qty text" size="4">
                                    </div>
                                </td>
                                <td class="product-subtotal">￥<span class="amount"><fmt:formatNumber value="${product.presentPrice*product.number}" pattern="###.##" minFractionDigits="2"/></span></td>
                                <td>
                                    <input type="checkbox" name="carIds" value="${product.carId}"/>
                                </td>
                            </tr>
                                <c:set var="totals" value="${totals+product.presentPrice*product.number}"/>
                            </c:forEach>
                            <tr>
                                <td colspan="5" class="actions">
                                    <a class="continue-shopping" href="${path}/index">继续购物</a>
                                    <input type="submit" class="update-cart" onclick="update()" name="update_cart" value="更新购物车" />
                                </td>
                                <td style="text-align: center;line-height: 80px;border: 0.5px solid #EEEEEE">
                                    <input type="checkbox" id="all"/>全选
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="col-md-4">
                        <div class="cart-totals">
                            <table>
                                <tbody>
                                <tr class="cart-subtotal">
                                    <th>小计</th>
                                    <td class="totals">￥0.00</td>
                                </tr>
                                <tr class="shipping">
                                    <th>运输</th>
                                    <td>免费送货</td>
                                </tr>
                                <tr class="order-total">
                                    <th>总</th>
                                    <td><strong class="totals">￥0.00</strong></td>
                                </tr>
                                </tbody>
                            </table>
                            <div class="proceed-to-checkout">
                                <a href="javascript:void (0);" onclick="payAll()">进行结算</a>
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
