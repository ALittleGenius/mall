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
            color: red;
        }
    </style>
    <script type="text/javascript">
        $(function () {
            $("#username").blur(function () {
                console.log("aaaa");
                $.ajax({
                    url:"${path}/member/getUsername",
                    type:'post',
                    data:{
                        username:$(this).val()
                    },
                    success:function (result) {
                        if(result.msg){
                            $("#username").next().css("color","green");
                            $("#username").next().text("✔");
                        }else{
                            $("#username").next().css("color","red");
                            $("#username").next().text("该用户名已存在!");
                        }
                    }
                })
            });
        });

        function tel() {

        };
        function password() {
            
        };



        function register() {
            var username = $("#username").val();
            var password = $("#password").val();
            var password1 = $("#password1").val();
            var tel = $("#tel");
            if(!username){
                $("#username").next().text("请输入用户名！");
            }else if(!password){
                $("#password").next().text("请输入密码！");
            }else if(!password1){
                $("#password1").next().text("请确认密码！");
            }else if(!tel){
                $("#tel").next().text("请输入手机号！");
            }else if(password!=password1){
                $("#password1").next().text("两次密码不一致，请重新输入！");
            }else{
                var data = {
                  name:username,
                  password:password,
                  tel:tel
                };
                $.ajax({
                    url:"${path}/member/register",
                    type:'post',
                    data:data,
                    success:function (result) {
                        if(result.msg){
                            window.location.pathname = "index.jsp"
                        }else{
                            $("#button").next().text("注册失败！")
                        }
                    },
                    error:function (result) {

                    }
                });
            }


        };
    </script>
</head>
<body>


<div class="noo-spinner">
    <div class="spinner">
        <div class="cube1"></div>
        <div class="cube2"></div>
    </div>
</div>

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
                            <form style="width: 500px; text-align: center; margin: 0 auto;padding:auto" >
                                <input  type="text"  style="width: 300px;" id="username" name="username" placeholder="用户名"/>
                                <span></span>
                                <br/><br/>
                                <input type="password" style="width: 300px; " id="password" name="password" placeholder="密码"/>
                                <span></span>
                                <br/><br/>
                                <input type="password" style="width: 300px; " id="password1" name="password1" placeholder="确认密码"/>
                                <span></span>
                                <br/><br/>
                                <input type="tel" style="width: 300px; " id="tel" name="tel" placeholder="手机号"/>
                                <span></span>
                                <br/><br/>
                                <input type="button" id="button" onclick="register()" style="width: 300px;" value="注册"/>
                                <span></span>
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
<jsp:include page="common/foot-js.jsp"/>
</body>
</html>


