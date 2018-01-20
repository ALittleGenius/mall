<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2018/1/12
  Time: 14:10
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
    <title>注册</title>
    <jsp:include page="common/head-js.jsp"/>
    <script src="static/js/jquery-1.8.3.min.js" type="text/javascript" rel="stylesheet"></script>

    <style type="text/css">
        span{
            font-family: 幼圆;
            font-size: 14px;
        }
        input{
            display: inline-block;
            margin: 0 auto;
        }
        .input{
            width: 800px;
            padding-left: 250px;
            margin: 0 auto;
        }
    </style>
    <script type="text/javascript">
        $(function () {
            $("#username").blur(function () {
                if($(this).val()){
                    $.ajax({
                        url:"${path}/member/getUsername",
                        type:'post',
                        data:{
                            username:$(this).val()
                        },
                        success:function (result) {
                            console.log(result.msg);
                            if(result.msg){
                                $("#username").next().css("color","green");
                                $("#username").next().text("✔");
                            }else{
                                $("#username").next().css("color","red");
                                $("#username").next().text("该用户名已存在!");
                            }
                        },
                        error:function () {

                        }
                    });
                }

            });

            $("#tel").blur(function () {
                if($("#tel").val()!=null){
                    $.ajax({
                        url:"${path}/member/getTel",
                        type:'post',
                        data:{
                            tel:$("#tel").val()
                        },
                        success:function (result) {
                            if(result.msg){
                                $("#tel").next().css("color","green");
                                $("#tel").next().text("✔");
                            }else{
                                $("#tel").next().css("color","red");
                                $("#tel").next().text("该手机号已被注册!");
                            }
                        },
                        error:function () {

                        }
                    });
                }

            });

            $("#password1").blur(function () {

                var password = $("#password").val();
                var password1 = $("#password1").val();
                if(password && password1){
                    if(password!=password1){
                        $("#password1").next().css("color","red");
                        $("#password1").next().text("两次密码不一致!");
                    }else{
                        $(this).next().css("color","green");
                        $(this).next().text("✔");
                    }
                }

            });

        });
        function register1() {
            console.log("aaaa");
            var username = $("#username").val();
            var password = $("#password").val();
            var password1 = $("#password1").val();
            var tel = $("#tel");
            if(!username){
                return false;
                $("#username").next().text("请输入用户名！");
            }else if(!password){
                return false;
                $("#password").next().text("请输入密码！");
            }else if(!password1){
                return false;
                $("#password1").next().text("请确认密码！");
            }else if(!tel){
                return false;
                $("#tel").next().text("请输入手机号！");
            }else if(password!=password1){
                return false;
                $("#password1").next().text("两次密码不一致，请重新输入！");
            }
                console.log("bbbb");
                /*var data = {
                  name:username,
                  password:password,
                  tel:tel
                };*/
                /*$.ajax({
                   url:'/member/register',
                    type:'post',
                    data:data,
                    success:function (result) {

                    },
                    error:function (result) {
                        $("#button").next().text("404");
                    }

                });*/

        }
    </script>
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
                        <h2 class="page-title text-center">注册</h2>
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
                        <div class="text-center mb-1 section-pretitle">注册</div>
                        <div class="organik-seperator mb-6 center">
                            <span class="sep-holder"><span class="sep-line"></span></span>
                            <div class="sep-icon"><i class="organik-flower"></i></div>
                            <span class="sep-holder"><span class="sep-line"></span></span>
                        </div>

                        <div>
                            <form action="${path}/member/register" method="post">
                                <div class="input">
                                    <input  type="text"  style="width: 300px;" id="username" name="name" placeholder="用户名"/>
                                    <span></span>
                                </div>

                                <br/>
                                <div class="input">
                                    <input type="password"  style="width: 300px; " id="password" name="password" placeholder="密码"/>
                                    <span></span>
                                </div>

                                <br/>
                                <div class="input">
                                    <input type="password"  style="width: 300px; " id="password1" name="password1" placeholder="确认密码"/>
                                    <span></span>
                                </div>

                                <br/>
                                <div class="input">
                                    <input type="tel"  style="width: 300px; " id="tel" name="tel" placeholder="手机号"/>
                                    <span></span>
                                </div>

                                <br/>
                                <div class="input">
                                    <input type="submit" id="button" onclick="register1()" style="width: 300px;" value="注册"/>
                                    <span></span>
                                </div>

                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--foot--%>

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


