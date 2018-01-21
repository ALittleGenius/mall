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
    <title>收货地址</title>

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
        function address(id) {

        }
        function deleteAddress(id) {
            $.ajax({
                url:"${path}/address/deleteAddress",
                type:'post',
                data:{
                    id:id
                } ,
                success:function (result) {
                    if(result.msg){
                        location.reload();
                    }else {
                        layer.alert('删除失败！ 404 ！', {
                            icon: 5
                        })
                    }
                },
                error:function () {
                    layer.alert('404', {
                        icon: 5
                    })
                }
            });
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
                        <h2 class="page-title text-center">收货地址</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="section pt-7 pb-7">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <table class="table shop-cart">
                            <thead>
                            <tr>
                                <td></td>
                                <td style="text-align: center">收件人</td>
                                <td style="text-align: center">电话</td>
                                <td style="text-align: center">收货地址</td>
                                <td></td>
                                <td></td>
                            </tr>
                            </thead>
                            <tbody>
                            <%--购物车商品--%>
                            <c:forEach items="${requestScope.addressAll}" var="address">
                                <tr class="cart_item">
                                    <td class="product-remove">
                                        <a href="javascript:void(0)" onclick="deleteAddress(${address.id})" class="remove">×</a>
                                    </td>
                                    <td class="product-thumbnail">
                                        ${address.name}
                                    </td>
                                    <td class="product-info">
                                        ${address.tel}
                                    </td>
                                    <td class="product-quantity">
                                        ${address.address}
                                    </td>
                                    <td>
                                        <input type="radio" onclick="address(${address.id})" <c:if test="${address.type == 2}"> checked = "checked" </c:if> name="carIds" value="默认地址"/>
                                    </td>
                                    <td><a href="${path}/address/getAddressFrom?id=${address.id}">编辑</a></td>
                                </tr>
                            </c:forEach>
                            <tr>
                                <td colspan="6" class="actions">
                                    <a class="continue-shopping" style="float: right" href="${path}/address/getAddressFrom">添加</a>
                                    <%--<input type="submit" class="update-cart"  name="update_cart" value="添加" />--%>
                                </td>
                            </tr>
                            </tbody>
                        </table>
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
