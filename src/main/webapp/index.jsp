<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2018/1/11
  Time: 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html >
<head>
    <meta charset="UTF-8" />
    <%--<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">--%>
    <title>首页</title>
    <jsp:include page="common/head-js.jsp"/>
</head>
<body>




<div class="noo-spinner">
    <div class="spinner">
        <div class="cube1"></div>
        <div class="cube2"></div>
    </div>
</div>
<%--<div id="menu-slideout" class="slideout-menu hidden-md-up">
    <div class="mobile-menu">
        <ul id="mobile-menu" class="menu">
            <li><a href="index.html">首页</a></li>
            <li><a href="about-us.html">关于我们</a></li>
            <li><a href="shop.html">店</a></li>
            <li><a href="shop-list.html">Shop List</a></li>
            <li><a href="cart.html">购物车</a></li>
            <li><a href="checkout.html">订单</a></li>
            <li><a href="contact-us.html">联系我们</a></li>
        </ul>
    </div>
</div>--%>
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
                                    <img src="static/images/slider/slide_bg_4.jpg" alt="" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="off" class="rev-slidebg" />
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
                                        <img src="static/images/slider/slide_6.png" alt="" />
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
                                        <img src="static/images/slider/slide_7.png" alt="" />
                                    </div>

                                    <a class="tp-caption btn-2 hidden-xs" href="#"
                                       data-x="['center','center','center','center']"
                                       data-y="['center','center','center','center']" data-voffset="['260','260','260','260']"
                                       data-width="['auto']" data-height="['auto']"
                                       data-type="button" data-responsive_offset="on"
                                       data-responsive="off"
                                       data-frames='[{"delay":0,"speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"},{"frame":"hover","speed":"300","ease":"Power0.easeIn","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgb(95,189,116);bg:rgba(51, 51, 51, 0);"}]'
                                       data-textAlign="['inherit','inherit','inherit','inherit']"
                                       data-paddingtop="[16,16,16,16]" data-paddingright="[30,30,30,30]"
                                       data-paddingbottom="[16,16,16,16]" data-paddingleft="[30,30,30,30]">Shop Now
                                    </a>
                                </li>
                                <li data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="300" data-rotate="0" data-saveperformance="off" data-title="Slide">
                                    <img src="static/images/slider/slide_bg_5.jpg"  alt="" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="off" class="rev-slidebg" />
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
                                        <img src="static/images/slider/slide_8.png" alt="" />
                                    </div>
                                    <a class="tp-caption btn-2 hidden-xs" href="#"
                                       data-x="['center','center','center','center']"
                                       data-y="['center','center','center','center']" data-voffset="['260','260','260','260']"
                                       data-width="['auto']" data-height="['auto']"
                                       data-type="button" data-responsive_offset="on"
                                       data-responsive="off"
                                       data-frames='[{"delay":0,"speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"},{"frame":"hover","speed":"300","ease":"Power0.easeIn","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgb(95,189,116);bg:rgba(51, 51, 51, 0);"}]'
                                       data-textAlign="['inherit','inherit','inherit','inherit']"
                                       data-paddingtop="[16,16,16,16]" data-paddingright="[30,30,30,30]"
                                       data-paddingbottom="[16,16,16,16]" data-paddingleft="[30,30,30,30]">Shop Now
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
                            <img src="static/images/oranges.png" alt="" />
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="mb-1 section-pretitle default-left">Welcome to</div>
                        <h2 class="section-title mtn-2 mb-3">Organik Store</h2>
                        <p class="mb-4">
                            Organic store opened its doors in 1990, it was Renée Elliott's dream to offer the best and widest range of organic foods available, and her mission to promote health in the community and to bring a sense of discovery and adventure into food shopping.
                        </p>
                        <a class="organik-btn arrow" href="#">Our products</a>
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
                            <div class="mb-1 section-pretitle white">Hot Deal</div>
                            <h2 class="section-title mtn-2 mb-3">Natural fresh juices</h2>
                            <p class="white mb-4">
                                Cur tantas regiones barbarorum pedibus obiit, tot maria transmisit? Uterque enim summo bono fruitur, id est voluptate
                            </p>
                            <div class="countdown-wrap mb-4">
                                <div class="countdown-content">
                                    <div class="pl-clock countdown-bar" data-time="2017/10/10"></div>
                                </div>
                            </div>
                            <a class="organik-btn brown" href="#">Shop Now</a>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="text-center floating">
                            <img src="static/images/can.png" alt="" />
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
                        <div class="text-center mb-1 section-pretitle">A friendly</div>
                        <h2 class="text-center section-title mtn-2">Organic Store</h2>
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
                            <div class="title">Always Fresh</div>
                        </div>
                        <p>Cur tantas regiones barbarorum peat dibus obiit, tregiones barbarorum peat dibus obiit, tot mariata</p>
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

                        <div class="col-md-3 col-sm-6 product-item masonry-item text-center juice">
                            <div class="product-thumb">
                                <a href="shop-detail.html">
                                    <div class="badges">
                                        <span class="hot">热</span>
                                        <span class="onsale">特价!</span>
                                    </div>
                                    <img src="static/images/shop/shop_1.jpg" alt="" />
                                </a>
                                <div class="product-action">
                                    <%--加入购物车--%>
									<span class="add-to-cart">
										<a href="#" data-toggle="tooltip" data-placement="top" title="Add to cart"></a>
									</span>
                                        <%--加入购物车--%>
                                    <span class="wishlist">
										<a href="#" data-toggle="tooltip" data-placement="top" title="Add to wishlist"></a>
									</span>
                                    <span class="quickview">
										<a href="#" data-toggle="tooltip" data-placement="top" title="Quickview"></a>
									</span>
                                    <span class="compare">
										<a href="#" data-toggle="tooltip" data-placement="top" title="Compare"></a>
									</span>
                                </div>
                            </div>
                            <%--商品信息--%>
                            <div class="product-info">
                                <a href="shop-detail.html">
                                    <h2 class="title">Orange Juice</h2>
                                    <span class="price">
										<del>$15.00</del>
										<ins>$12.00</ins>
									</span>
                                </a>
                            </div>
                        </div>


                    </div>

                    <div class="loadmore-contain">
                        <a class="organik-btn small" href="#"> 更多 </a>
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