<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2018/1/15
  Time: 10:39
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
    <title>商品列表</title>

    <jsp:include page="common/head-js.jsp"/>
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
<input type="hidden" id="member" value="${sessionScope.member}"/>

<jsp:include page="common/head1.jsp"/>
<div class="site">
    <jsp:include page="common/head.jsp"/>
    <div id="main">
        <div class="section section-bg-10 pt-11 pb-17">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <h2 class="page-title text-center">商品列表</h2>
                    </div>
                </div>
            </div>
        </div>
       <%-- <div class="section border-bottom pt-2 pb-2">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <ul class="breadcrumbs">
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Shop</a></li>
                            <li>Product Grid</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>--%>
        <div class="section pt-7 pb-7">
            <div class="container">
                <div class="row">
                    <div class="col-md-9 col-md-push-3">
                        <div class="shop-filter">
                            <div class="col-md-6">
                                <p class="result-count"> 显示${requestScope.productCount}条结果中的${requestScope.productShowCount}条</p>
                            </div>
                            <div class="col-md-6">
                                <div class="shop-filter-right">
                                    <%--查看方式：网格，列表--%>
                                    <%--<div class="switch-view">
                                        <a href="shop-list.html" class="switcher" data-toggle="tooltip" data-placement="top" title="" data-original-title="List"><i class="ion-navicon"></i></a>
                                        <a href="shop.html" class="switcher active" data-toggle="tooltip" data-placement="top" title="" data-original-title="Grid"><i class="ion-grid"></i></a>
                                    </div>--%>
                                        <%--根据什么排序--%>
                                    <form class="commerce-ordering">
                                        <select name="orderby" class="orderby">
                                            <option value="">Sort by popularity</option>
                                            <option value="">Sort by average rating</option>
                                            <option value="" selected="selected">Sort by newness</option>
                                            <option value="">Sort by price: low to high</option>
                                            <option value="">Sort by price: high to low</option>
                                        </select>
                                    </form>

                                </div>
                            </div>
                        </div>
                        <div class="category-carousel-2 mb-3" data-auto-play="true" data-desktop="3" data-laptop="3" data-tablet="2" data-mobile="1">
                            <%--商品图标分类--%>
                            <c:forEach items="${applicationScope.category}" var="category">
                            <div class="cat-item">
                                <div class="cats-wrap" data-bg-color="#f8c9c2">
                                    <a href="${path}/product/getProductList?cid=${category.id}">
                                        <img src="${path}/static/images/category/cate_${category.id}.png" alt="" />
                                        <h2 class="category-title">
                                            ${category.name} <mark class="count">(${category.productCount})</mark>
                                        </h2>
                                    </a>
                                </div>
                            </div>
                            </c:forEach>
                        </div>

                        <%--商品列表--%>
                        <div class="product-grid">
                            <c:forEach var="product" items="${requestScope.product}">
                            <div class="col-md-4 col-sm-6 product-item text-center mb-3">

                                <div class="product-thumb">
                                    <a href="${path}/product/getProductDetail?id=${product.id}">
                                        <div class="badges">
                                            <span class="hot">热卖</span>
                                            <span class="onsale">特价!</span>
                                        </div>
                                        <img src="${path}/${product.image}" alt="" />
                                    </a>
                                    <div class="product-action">
										<span class="add-to-cart">
											<a href="javascript:void(0);" onclick="addCar(${product.id})" data-toggle="tooltip" data-placement="top" title="加入购物车"></a>
										</span>
                                        <span class="wishlist">
											<a href="#" data-toggle="tooltip" data-placement="top" title="加入愿望清单"></a>
										</span>
                                        <%--<span class="quickview">
											<a href="#" data-toggle="tooltip" data-placement="top" title="Quickview"></a>
										</span>
                                        <span class="compare">
											<a href="#" data-toggle="tooltip" data-placement="top" title="Compare"></a>
										</span>--%>
                                    </div>
                                </div>
                                <div class="product-info">
                                    <a href="${path}/product/getProductDetail?id=${product.id}">
                                        <h2 class="title">${product.name}</h2>
                                        <span class="price">
											<del>￥${product.originalPrice}</del>
											<ins>￥${product.presentPrice}</ins>
										</span>
                                    </a>
                                </div>
                            </div>
                            </c:forEach>
                            <%----%>
                        </div>
                        <%--分页--%>
                        <div class="pagination">
                            <a class="prev page-numbers" href="#">上一页</a>
                            <a class="page-numbers" href="#">1</a>
                            <span class="page-numbers current">2</span>
                            <a class="page-numbers" href="#">3</a>
                            <a class="next page-numbers" href="#">下一页</a>
                        </div>

                    </div>

                    <jsp:include page="common/left.jsp"/>

                </div>
            </div>
        </div>
    </div>
 <jsp:include page="common/foot.jsp"/>
</div>

<jsp:include page="common/foot-js.jsp"/>
</body>
</html>
