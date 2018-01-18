
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
<html >
<head>
    <meta charset="UTF-8" />
    <%--<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">--%>
    <title>首页</title>
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

<input type="hidden" id="member" value="${sessionScope.member}"/>



<jsp:include page="common/head1.jsp"/>
<div class="site">

    <%--head--%>
    <jsp:include page="common/head.jsp"/>


    <div id="main">
        <div class="section">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12 p-0">
                        <div id="rev_slider" class="rev_slider fullscreenbanner">
                            <ul>
                                <li data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="300" data-rotate="0" data-saveperformance="off" data-title="Slide">
                                    <img src="${path}/static/images/slider/slide_bg_4.jpg" alt="" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="off" class="rev-slidebg" />
                                    <div class="tp-caption rs-parallaxlevel-2"
                                         data-x="center" data-hoffset=""
                                         data-y="center" data-voffset="-80"
                                         data-width="['none','none','none','none']"
                                         data-height="['none','none','none','none']"
                                         data-type="image" data-responsive_offset="on"
                                         data-frames='[{"delay":0,"speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                         data-textAlign="['inherit','inherit','inherit','inherit']"
                                         data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]"
                                         data-paddingbottom="[0,0,0,0]"
                                         data-paddingleft="[0,0,0,0]">
                                        <img src="${path}/static/images/slider/slide_6.png" alt="" />
                                    </div>
                                    <div class="tp-caption rs-parallaxlevel-1"
                                         data-x="center" data-hoffset=""
                                         data-y="center" data-voffset="-80"
                                         data-width="['none','none','none','none']"
                                         data-height="['none','none','none','none']"
                                         data-type="image" data-responsive_offset="on"
                                         data-frames='[{"delay":0,"speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                         data-textAlign="['inherit','inherit','inherit','inherit']"
                                         data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]"
                                         data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]">
                                        <img src="${path}/static/images/slider/slide_7.png" alt="" />
                                    </div>

                                    <a class="tp-caption btn-2 hidden-xs" href="${path}/product/getProductList"
                                       data-x="['center','center','center','center']"
                                       data-y="['center','center','center','center']" data-voffset="['260','260','260','260']"
                                       data-width="['auto']" data-height="['auto']"
                                       data-type="button" data-responsive_offset="on"
                                       data-responsive="off"
                                       data-frames='[{"delay":0,"speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"},{"frame":"hover","speed":"300","ease":"Power0.easeIn","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgb(95,189,116);bg:rgba(51, 51, 51, 0);"}]'
                                       data-textAlign="['inherit','inherit','inherit','inherit']"
                                       data-paddingtop="[16,16,16,16]" data-paddingright="[30,30,30,30]"
                                       data-paddingbottom="[16,16,16,16]" data-paddingleft="[30,30,30,30]">去购物
                                    </a>
                                </li>
                                <li data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="300" data-rotate="0" data-saveperformance="off" data-title="Slide">
                                    <img src="${path}/static/images/slider/slide_bg_5.jpg"  alt="" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="off" class="rev-slidebg" />
                                    <div class="tp-caption rs-parallaxlevel-1"
                                         data-x="center" data-hoffset=""
                                         data-y="center" data-voffset="-120"
                                         data-width="['none','none','none','none']"
                                         data-height="['none','none','none','none']"
                                         data-type="image" data-responsive_offset="on"
                                         data-frames='[{"delay":0,"speed":1500,"frame":"0","from":"z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
                                         data-textAlign="['inherit','inherit','inherit','inherit']"
                                         data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]"
                                         data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]">
                                        <img src="${path}/static/images/slider/slide_8.png" alt="" />
                                    </div>
                                    <a class="tp-caption btn-2 hidden-xs" href="${path}/product/getProductList"
                                       data-x="['center','center','center','center']"
                                       data-y="['center','center','center','center']" data-voffset="['260','260','260','260']"
                                       data-width="['auto']" data-height="['auto']"
                                       data-type="button" data-responsive_offset="on"
                                       data-responsive="off"
                                       data-frames='[{"delay":0,"speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"},{"frame":"hover","speed":"300","ease":"Power0.easeIn","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgb(95,189,116);bg:rgba(51, 51, 51, 0);"}]'
                                       data-textAlign="['inherit','inherit','inherit','inherit']"
                                       data-paddingtop="[16,16,16,16]" data-paddingright="[30,30,30,30]"
                                       data-paddingbottom="[16,16,16,16]" data-paddingleft="[30,30,30,30]">去购物
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%--查看全部产品--%>
        <div class="section section-bg-1 section-cover pt-17 pb-3">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="mt-3 mb-3">
                            <img src="${path}/static/images/oranges.png" alt="" />
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="mb-1 section-pretitle default-left">Welcome to</div>
                        <h2 class="section-title mtn-2 mb-3">Organik 商店</h2>
                        <p class="mb-4">
                            有机商店开业于2017年，我们的梦想是提供最好和最广泛的有机食品，
                            我们的使命是促进社区的健康，为食品购物带来探索和冒险的感觉。
                        </p>
                        <a class="organik-btn arrow" href="${path}/product/getProductList">我们的产品</a>
                    </div>
                </div>
            </div>
        </div>

        <%--
           热卖产品

         --%>
        <div class="section section-bg-2 section-cover pt-14">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="text-center">
                            <div class="mb-1 section-pretitle white">热卖</div>
                            <h2 class="section-title mtn-2 mb-3">Natural fresh juices</h2>
                            <p class="white mb-4">
                                Cur tantas regiones barbarorum pedibus obiit, tot maria transmisit? Uterque enim summo bono fruitur, id est voluptate
                            </p>
                            <div class="countdown-wrap mb-4">
                                <div class="countdown-content">
                                    <div class="pl-clock countdown-bar" data-time="2018/1/20"></div>
                                </div>
                            </div>
                            <a class="organik-btn brown" href="#">现在去购物</a>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="text-center floating">
                            <img src="${path}/static/images/can.png" alt="" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%--商店介绍--%>
        <div class="section section-bg-3 pt-6 pb-6">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="text-center mb-1 section-pretitle">一个友好的</div>
                        <h2 class="text-center section-title mtn-2">有机商店</h2>
                        <div class="organik-seperator mb-9 center">
                            <span class="sep-holder"><span class="sep-line"></span></span>
                            <div class="sep-icon"><i class="organik-flower"></i></div>
                            <span class="sep-holder"><span class="sep-line"></span></span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="organik-special-title">
                            <div class="number">01</div>
                            <div class="title">总是新鲜</div>
                        </div>
                        <p> aaaaaa</p>
                        <div class="mb-8"></div>
                        <div class="organik-special-title">
                            <div class="number">02</div>
                            <div class="title">Keep You Healthy</div>
                        </div>
                        <p>Cur tantas regiones barbarorum peat dibus obiit, tregiones barbarorum peat dibus obiit, tot mariata</p>
                    </div>
                    <div class="col-md-4">
                        <div class="mb-8"></div>
                    </div>
                    <div class="col-md-4">
                        <div class="organik-special-title align-right">
                            <div class="number">03</div>
                            <div class="title">Safe From Pesticides</div>
                        </div>
                        <p>Cur tantas regiones barbarorum peat dibus obiit, tregiones barbarorum peat dibus obiit, tot mariata</p>
                        <div class="mb-8"></div>
                        <div class="organik-special-title align-right">
                            <div class="number">04</div>
                            <div class="title">Keep You Healthy</div>
                        </div>
                        <p>Cur tantas regiones barbarorum peat dibus obiit, tregiones barbarorum peat dibus obiit, tot mariata</p>
                    </div>
                </div>
            </div>
        </div>

        <%--
            购物流程
        --%>

        <div class="section border-bottom mt-6 mb-5">
            <div class="container">
                <div class="row">
                    <div class="organik-process">
                        <div class="col-md-3 col-sm-6 organik-process-small-icon-step">
                            <div class="icon">
                                <i class="organik-delivery"></i>
                            </div>
                            <div class="content">
                                <div class="title">Free shipping</div>
                                <div class="text">All order over $100</div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 organik-process-small-icon-step">
                            <div class="icon">
                                <i class="organik-hours-support"></i>
                            </div>
                            <div class="content">
                                <div class="title">Customer support</div>
                                <div class="text">Support 24/7</div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 organik-process-small-icon-step">
                            <div class="icon">
                                <i class="organik-credit-card"></i>
                            </div>
                            <div class="content">
                                <div class="title">Secure payments</div>
                                <div class="text">Confirmed</div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 organik-process-small-icon-step">
                            <div class="icon">
                                <i class="organik-lettuce"></i>
                            </div>
                            <div class="content">
                                <div class="title">Made with love</div>
                                <div class="text">Best services</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%--
            商品
        --%>

        <div class="section pt-12 pb-9">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="text-center mb-1 section-pretitle">发现</div>
                        <h2 class="text-center section-title mtn-2">我们的产品</h2>
                        <div class="organik-seperator center">
                            <span class="sep-holder"><span class="sep-line"></span></span>
                            <div class="sep-icon"><i class="organik-flower"></i></div>
                            <span class="sep-holder"><span class="sep-line"></span></span>
                        </div>
                    </div>
                </div>
                <%--商品分类--%>
                <div class="row">
                    <div class="col-sm-12 p-0">
                        <div class="text-center">
                            <ul class="masonry-filter">
                                <li><a href="#" data-filter="" class="active">全部</a></li>
                                <li><a href="#" data-filter=".dried">干</a></li>
                                <li><a href="#" data-filter=".fruits">水果</a></li>
                                <li><a href="#" data-filter=".vegetables">蔬菜</a></li>
                                <li><a href="#" data-filter=".juice">果汁</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="product-grid masonry-grid-post">
                        <c:forEach items="${requestScope.juices}" var="juice">
                            <div class="col-md-3 col-sm-6 product-item masonry-item text-center juice">
                                <div class="product-thumb">
                                    <a href="${path}/product/getProductDetail?id=${juice.id}">
                                        <div class="badges">
                                            <span class="hot">热</span>
                                            <span class="onsale">特价!</span>
                                        </div>
                                        <img src="${path}/${juice.image}" alt="" />
                                    </a>
                                    <div class="product-action">
                                            <%--加入购物车--%>
                                        <span class="add-to-cart">
										<a href="javascript:void(0);" onclick="addCar(${juice.id})" data-toggle="tooltip" data-placement="top" title="Add to cart"></a>
									</span>
                                            <%--加入购物车--%>
                                        <span class="wishlist">
										<a href="#" data-toggle="tooltip" data-placement="top" title="Add to wishlist"></a>
									</span>
                                        <%--<span class="quickview">
										<a href="#" data-toggle="tooltip" data-placement="top" title="Quickview"></a>
									</span>
                                        <span class="compare">
										<a href="#" data-toggle="tooltip" data-placement="top" title="Compare"></a>
									</span>--%>
                                    </div>
                                </div>
                                    <%--商品信息--%>
                                <div class="product-info">
                                    <a href="${path}/product/getProductDetail?id=${juice.id}">
                                        <h2 class="title">${juice.name}</h2>
                                        <span class="price">
										<del>$${juice.originalPrice}</del>
										<ins>$${juice.presentPrice}</ins>
									</span>
                                    </a>
                                </div>
                            </div>

                        </c:forEach>

                        <c:forEach items="${requestScope.fruits}" var="shop">
                            <div class="col-md-3 col-sm-6 product-item masonry-item text-center fruits">
                                <div class="product-thumb">
                                    <a href="${path}/product/getProductDetail?id=${shop.id}">
                                        <div class="badges">
                                            <span class="hot">热</span>
                                            <span class="onsale">特价!</span>
                                        </div>
                                        <img src="${path}/${shop.image}" alt="" />
                                    </a>
                                    <div class="product-action">
                                            <%--加入购物车--%>
                                        <span class="add-to-cart">
										<a href="javascript:void(0);" onclick="addCar(${shop.id})" data-toggle="tooltip" data-placement="top" title="Add to cart"></a>
									</span>
                                            <%--加入购物车--%>
                                        <span class="wishlist">
										<a href="#" data-toggle="tooltip" data-placement="top" title="Add to wishlist"></a>
									</span>
                                    </div>
                                </div>
                                    <%--商品信息--%>
                                <div class="product-info">
                                    <a href="${path}/product/getProductDetail?id=${shop.id}">
                                        <h2 class="title">${shop.name}</h2>
                                        <span class="price">
										<del>$${shop.originalPrice}</del>
										<ins>$${shop.presentPrice}</ins>
									</span>
                                    </a>
                                </div>
                            </div>

                        </c:forEach>

                        <c:forEach items="${requestScope.dried}" var="shop">
                            <div class="col-md-3 col-sm-6 product-item masonry-item text-center dried">
                                <div class="product-thumb">
                                    <a href="${path}/product/getProductDetail?id=${shop.id}">
                                        <div class="badges">
                                            <span class="hot">热</span>
                                            <span class="onsale">特价!</span>
                                        </div>
                                        <img src="${path}/${shop.image}" alt="" />
                                    </a>
                                    <div class="product-action">
                                            <%--加入购物车--%>
                                        <span class="add-to-cart">
										<a href="javascript:void(0);" onclick="addCar(${shop.id})" data-toggle="tooltip" data-placement="top" title="Add to cart"></a>
									</span>
                                            <%--加入购物车--%>
                                        <span class="wishlist">
										<a href="#" data-toggle="tooltip" data-placement="top" title="Add to wishlist"></a>
									</span>
                                    </div>
                                </div>
                                    <%--商品信息--%>
                                <div class="product-info">
                                    <a href="${path}/product/getProductDetail?id=${shop.id}">
                                        <h2 class="title">${shop.name}</h2>
                                        <span class="price">
										<del>$${shop.originalPrice}</del>
										<ins>$${shop.presentPrice}</ins>
									</span>
                                    </a>
                                </div>
                            </div>
                        </c:forEach>

                        <c:forEach items="${requestScope.vegetables}" var="shop">
                            <div class="col-md-3 col-sm-6 product-item masonry-item text-center vegetables">
                                <div class="product-thumb">
                                    <a href="${path}/product/getProductDetail?id=${shop.id}">
                                        <div class="badges">
                                            <span class="hot">热</span>
                                            <span class="onsale">特价!</span>
                                        </div>
                                        <img src="${path}/${shop.image}" alt="" />
                                    </a>
                                    <div class="product-action">
                                            <%--加入购物车--%>
                                        <span class="add-to-cart">
										<a href="javascript:void(0);" onclick="addCar(${shop.id})" data-toggle="tooltip" data-placement="top" title="Add to cart"></a>
									</span>
                                            <%--加入购物车--%>
                                        <span class="wishlist">
										<a href="#" data-toggle="tooltip" data-placement="top" title="Add to wishlist"></a>
									</span>
                                    </div>
                                </div>
                                    <%--商品信息--%>
                                <div class="product-info">
                                    <a href="${path}/product/getProductDetail?id=${shop.id}">
                                        <h2 class="title">${shop.name}</h2>
                                        <span class="price">
										<del>$${shop.originalPrice}</del>
										<ins>$${shop.presentPrice}</ins>
									</span>
                                    </a>
                                </div>
                            </div>

                        </c:forEach>
                    </div>

                    <div class="loadmore-contain">
                        <a class="organik-btn small" href="${path}/product/getProductList"> 更多 </a>
                    </div>
                </div>
            </div>
        </div>

        <div class="section bg-light pt-10 pb-10">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="text-center mb-1 section-pretitle">Why choose</div>
                        <h2 class="text-center section-title mtn-2">Organic products?</h2>
                        <div class="organik-seperator center mb-6">
                            <span class="sep-holder"><span class="sep-line"></span></span>
                            <div class="sep-icon"><i class="organik-flower"></i></div>
                            <span class="sep-holder"><span class="sep-line"></span></span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="accordion icon-left" id="accordion1">
                            <div class="accordion-group toggle">
                                <div class="accordion-heading toggle_title active">
                                    <a class="accordion-toggle" data-toggle="collapse" aria-expanded="true" aria-controls="collapse1" href="#collapse1">
                                        Benefit from more nutrients
                                    </a>
                                    <span class="icon"><i class="ion-heart"></i></span>
                                </div>
                                <div id="collapse1" class="accordion-body collapse in">
                                    <div class="accordion-inner">
                                        <p>
                                            Organically grown foods have more nutrients—vitamins, minerals, enzymes, and micronutrients—than commercially grown foods because the soil is managed and nourished with sustainable practices by responsible standards. Organic farming supports eco-sustenance, or farming in harmony with nature.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-group toggle">
                                <div class="accordion-heading toggle_title">
                                    <a class="accordion-toggle" data-toggle="collapse" data-parent="collapse2" href="#collapse2">
                                        Reduce pollution and protect water and soil
                                    </a>
                                    <span class="icon"><i class="ion-chatboxes"></i></span>
                                </div>
                                <div id="collapse2" class="accordion-body toggle_content collapse">
                                    <div class="accordion-inner">
                                        <p>
                                            Organic agriculture considers the medium- and long-term effect of agricultural interventions on the agro-ecosystem. It aims to produce food while establishing an ecological balance to prevent soil fertility or pest problems. Organic agriculture takes a proactive approach as opposed to treating problems after they emerge.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-group toggle">
                                <div class="accordion-heading toggle_title">
                                    <a class="accordion-toggle" data-toggle="collapse" data-parent="collapse3" href="#collapse3">
                                        Preserve agricultural diversity
                                    </a>
                                    <span class="icon"><i class="ion-lightbulb"></i></span>
                                </div>
                                <div id="collapse3" class="accordion-body toggle_content collapse">
                                    <div class="accordion-inner">
                                        <p>
                                            Organic farmers are both custodians and users of biodiversity at all levels. At the gene level, traditional and adapted seeds and breeds are preferred for their greater resistance to diseases and their resilience to climatic stress. At the species level, diverse combinations of plants and animals optimize nutrient and energy cycling for agricultural production.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="text-center app-desc floating">
                            <img src="${path}/static/images/app-desc.png" alt="" />
                        </div>
                    </div>
                </div>
            </div>
        </div>





    </div>
    <jsp:include page="common/foot.jsp"/>
</div>
<jsp:include page="common/foot-js.jsp"/>

</body>
</html>