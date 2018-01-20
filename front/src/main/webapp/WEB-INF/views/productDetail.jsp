<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2018/1/15
  Time: 15:57
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
    <title>商品详情</title>
    <link rel="stylesheet" href="${path}/static/css/bootstrap.min.css" type="text/css" media="all">
    <link rel="stylesheet" href="${path}/static/css/font-awesome.min.css" type="text/css" media="all" />
    <link rel="stylesheet" href="${path}/static/css/ionicons.min.css" type="text/css" media="all" />
    <link rel="stylesheet" href="${path}/static/css/owl.carousel.css" type="text/css" media="all">
    <link rel="stylesheet" href="${path}/static/css/owl.theme.css" type="text/css" media="all">
    <link rel='stylesheet' href='${path}/static/css/prettyPhoto.css' type='text/css' media='all'>
    <link rel='stylesheet' href='${path}/static/css/slick.css' type='text/css' media='all'>
    <link rel="stylesheet" href="${path}/static/css/style.css" type="text/css" media="all">
    <link rel="stylesheet" href="${path}/static/css/custom.css" type="text/css" media="all">
    <link href="http://fonts.googleapis.com/css?family=Great+Vibes%7CLato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">

    <script type="text/javascript">
        function addCar(productId) {
            var member = $("#member").val();
            console.log(member);
            if(member){
                $.ajax({
                    url:"${path}/car/addCar",
                    type:'post',
                    data:{
                        productId:productId,
                        number:$("#number").val()
                    },
                    success:function (result) {
                        if(result.msg){
                            alert("添加成功！");
                        }else{
                            alert("添加失败！");
                        }
                    },
                    error:function (result) {
                        alert("404");
                    }
                });
            }else{
                window.location.href= "${path}/login.jsp";
            }

        }
        function addCar1(productId) {
            var member = $("#member").val();
            console.log(member);
            if(member){
                $.ajax({
                    url:"${path}/car/addCar",
                    type:'post',
                    data:{
                        productId:productId
                    },
                    success:function (result) {
                        if(result.msg){
                            alert("添加成功！");
                        }else{
                            alert("添加失败！");
                        }
                    },
                    error:function (result) {
                        alert("404");
                    }
                });
            }else {
                window.location.href= "${path}/login.jsp";
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
                        <h2 class="page-title text-center">商品详情</h2>
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
                            <li>Shop Detail</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>--%>
        <div class="section pt-7 pb-7">
            <div class="container">
                <div class="row">
                    <div class="col-md-9 col-md-push-3">
                        <div class="single-product">
                            <div class="col-md-6">
                                <div class="image-gallery">
                                    <div class="image-gallery-inner">
                                        <%--forEach type = 1的图片--%>
                                        <c:forEach items="${requestScope.productDetail.imgs}" var="img">
                                            <c:if test="${img.type == 1}">
                                        <div>
                                            <div class="image-thumb">
                                                <a href="${path}/${img.name}" data-rel="prettyPhoto[gallery]">
                                                    <img  src="${path}/${img.name}" alt="" />
                                                </a>
                                            </div>
                                        </div>
                                            </c:if>
                                        </c:forEach>
                                    </div>
                                </div>
                                <div class="image-gallery-nav">

                                    <%--forEach type = 1的图片--%>
                                    <c:forEach items="${requestScope.productDetail.imgs}" var="img">
                                        <c:if test="${img.type == 1}">
                                    <div class="image-nav-item">
                                        <div class="image-thumb">
                                            <img style="width: 100px;height: 100px" src="${path}/${img.name}" alt="" />
                                        </div>
                                    </div>
                                        </c:if>
                                    </c:forEach>

                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="summary">
                                    <h1 class="product-title">${requestScope.productDetail.name}</h1>
                                    <div class="product-rating">
                                        <div class="star-rating">
                                            <span style="width:${requestScope.grade}%"></span>
                                        </div>
                                        <%--几个评论--%>
                                        <i>(${requestScope.commentSize} 评论)</i>
                                    </div>
                                    <div class="product-price">
                                        <c:if test="${requestScope.productDetail.originalPrice != null}">
                                        <del>￥${requestScope.productDetail.originalPrice}</del>
                                        </c:if>
                                        <ins>￥${requestScope.productDetail.presentPrice}</ins>
                                    </div>
                                    <%--商品描述--%>
                                    <div class="mb-3">
                                        <p>${requestScope.productDetail.details}</p>
                                    </div>

                                    <%--加入购物车--%>
                                    <form class="cart">
                                        <div class="quantity-chooser">
                                            <div class="quantity">
                                                <span class="qty-minus" data-min="1"><i class="ion-ios-minus-outline"></i></span>
                                                <input type="text" id="number" name="quantity" value="1" title="Qty" class="input-text qty text" size="4">
                                                <span class="qty-plus" data-max=""><i class="ion-ios-plus-outline"></i></span>
                                            </div>
                                        </div>
                                        <input type="hidden" id="member" value="${sessionScope.member}" />
                                        <button type="button" onclick="addCar(${requestScope.productDetail.id})" class="single-add-to-cart">加入购物车</button>
                                    </form>


                                    <div class="product-tool">
                                        <a href="#" data-toggle="tooltip" data-placement="top" title="Add to wishlist"> 加入愿望清单 </a>
                                        <%--<a class="compare" href="#" data-toggle="tooltip" data-placement="top" title="Add to compare"> Compare </a>--%>
                                    </div>

                                    <div class="product-meta">
                                        <table>
                                            <tbody>
                                            <tr>
                                                <td class="label">类别</td>
                                                <td><a href="#">${requestScope.productDetail.category}</a></td>
                                            </tr>
                                            <%--<tr>
                                                <td class="label">分享</td>
                                                <td class="share">
                                                    <a target="_blank" href="#"><i class="fa fa-facebook"></i></a>
                                                    <a target="_blank" href="#"><i class="fa fa-twitter"></i></a>
                                                    <a target="_blank" href="#"><i class="fa fa-google-plus"></i></a>
                                                </td>
                                            </tr>--%>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="commerce-tabs tabs classic">
                                    <ul class="nav nav-tabs tabs">
                                        <li class="active">
                                            <a data-toggle="tab" href="#tab-description" aria-expanded="true">描述</a>
                                        </li>
                                        <li class="">
                                            <a data-toggle="tab" href="#tab-reviews" aria-expanded="false">评论</a>
                                        </li>
                                    </ul>

                                    <div class="tab-content">
                                        <%--商品描述--%>
                                        <div class="tab-pane fade active in" id="tab-description">
                                            <p>
                                                <c:forEach var="img" items="${requestScope.productDetail.imgs}">
                                                    <c:if test="${img.type == 2}">
                                                        <img src="${path}/${img.name}"/>
                                                    </c:if>
                                                </c:forEach>
                                            </p>
                                        </div>
                                        <%--商品评论--%>
                                        <div id="tab-reviews" class="tab-pane fade">
                                            <div class="single-comments-list mt-0">
                                                <div class="mb-2">
                                                    <h2 class="comment-title">2 reviews for Orange Juice</h2>
                                                </div>
                                                <ul class="comment-list">
                                                    <c:forEach items="${requestScope.productDetail.comments}" var="comment">
                                                    <li>
                                                        <div class="comment-container">
                                                            <div class="comment-author-vcard">
                                                                <img alt="" src="${path}/${comment.headSculpture}" />
                                                            </div>
                                                            <div class="comment-author-info">
                                                                <span class="comment-author-name">${comment.name}</span>
                                                                <%--<span >${comment.creatTime}</span>--%>
                                                                <%--<a href="#" class="comment-date">${comment.creatTime}</a>--%>
                                                                <p>${comment.comment}</p>
                                                            </div>
                                                            <div class="reply">
                                                                <a class="comment-reply-link" href="#">Reply</a>
                                                            </div>
                                                        </div>
                                                        <c:if test="${comment.reply != null}" >
                                                        <ul class="children">
                                                            <li>
                                                                <div class="comment-container">
                                                                    <div class="comment-author-vcard">
                                                                        <img alt="" src="${path}/static/images/avatar/avatar.png" />
                                                                    </div>
                                                                    <div class="comment-author-info">
                                                                        <span class="comment-author-name">商家回复</span>
                                                                        <%--<a href="#" class="comment-date">July 27, 2016</a>--%>
                                                                        <p>${comment.reply}</p>
                                                                    </div>
                                                                    <%--<div class="reply">
                                                                        <a class="comment-reply-link" href="#">Reply</a>
                                                                    </div>--%>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                        </c:if>
                                                    </li>
                                                    </c:forEach>
                                                </ul>
                                            </div>

                                            <%--发表评论--%>
                                            <%--<div class="single-comment-form mt-0">
                                                <div class="mb-2">
                                                    <h2 class="comment-title">LEAVE A REPLY</h2>
                                                </div>
                                                <form class="comment-form">
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <textarea id="comment" name="comment" cols="45" rows="5" placeholder="Message *"></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-4">
                                                            <input id="author" name="author" type="text" value="" size="30" placeholder="Name *" class="mb-2">
                                                        </div>
                                                        <div class="col-md-4">
                                                            <input id="email" name="email" type="email" value="" size="30" placeholder="Email *" class="mb-2">
                                                        </div>
                                                        <div class="col-md-4">
                                                            <input id="url" name="url" type="text" value="" placeholder="Website">
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-2">
                                                            <input name="submit" type="submit" id="submit" class="btn btn-alt btn-border" value="Submit">
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>--%>


                                        </div>
                                    </div>
                                </div>
                                <div class="related">
                                    <div class="related-title">
                                        <div class="text-center mb-1 section-pretitle fz-34">相关</div>
                                        <h2 class="text-center section-title mtn-2 fz-24">产品</h2>
                                    </div>

                                    <div class="product-carousel p-0" data-auto-play="true" data-desktop="3" data-laptop="2" data-tablet="2" data-mobile="1">

                                        <c:forEach var="product" items="${requestScope.like}">
                                        <div class="product-item text-center">
                                            <div class="product-thumb">
                                                <a href="${path}/product/getProductDetail?id=${product.id}">
                                                    <div class="badges">
                                                        <span class="hot">热卖</span>
                                                    </div>
                                                    <img src="${path}/${product.image}" alt="" />
                                                </a>
                                                <div class="product-action">
													<span class="add-to-cart">
														<a href="javascript:void(0)" onclick="addCar1(${product.id})" data-toggle="tooltip" data-placement="top" title="加入购物车"></a>
													</span>
                                                    <span class="wishlist">
														<a href="#" data-toggle="tooltip" data-placement="top" title="加入愿望清单"></a>
													</span>
                                                </div>
                                            </div>
                                            <div class="product-info">
                                                <a href="${path}/product/getProductDetail?id=${product.id}">
                                                    <h2 class="title">${product.name}</h2>
                                                    <c:if test="${product.originalPrice != null}">
                                                    <del>￥${product.originalPrice}</del>
                                                    </c:if>
                                                    <span class="price">￥${product.presentPrice}</span>
                                                </a>
                                            </div>
                                        </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <jsp:include page="common/left.jsp"/>
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
<script type='text/javascript' src='${path}/static/js/slick.min.js'></script>
<script type="text/javascript" src="${path}/static/js/script.js"></script>

</body>
</html>
