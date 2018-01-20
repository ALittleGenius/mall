<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2018/1/19
  Time: 10:49
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
    <title>登录</title>
    <jsp:include page="common/head-js.jsp"/>
</head>
<body>


<jsp:include page="common/head1.jsp"/>

<div class="site">
    <%--head--%>
    <jsp:include page="common/head.jsp"/>



    <div id="main">
        <div class="section section-bg-10 pt-11 pb-17">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <h2 class="page-title text-center">成功</h2>
                    </div>
                </div>
            </div>
        </div>
        <%--<div class="section border-bottom pt-2 pb-2">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <ul class="breadcrumbs">
                            <li><a href="#">首页</a></li>
                            <li>登录</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>--%>

        <div class="section pt-10 pb-10">
            <div class="container">


                <div class="row">
                    <div class="col-sm-12">
                        <%--<hr class="mt-4 mb-7" />--%>
                        <div class="text-center mb-1 section-pretitle">成功</div>
                        <div class="organik-seperator mb-6 center">
                            <span class="sep-holder"><span class="sep-line"></span></span>
                            <div class="sep-icon"><i class="organik-flower"></i></div>
                            <span class="sep-holder"><span class="sep-line"></span></span>
                        </div>
                        <div style="width: 500px;text-align: center;margin: 0 auto" >
                            <h1>购买成功！</h1>
                            <h3><a href="${path}/index">继续购物</a></h3>
                            <h3><a href="${path}/orders/getOrdersAll">查看订单</a></h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--foot--%>

    <jsp:include page="common/foot.jsp"/>
</div>
<jsp:include page="common/foot-js.jsp"/>
</body>
</html>
