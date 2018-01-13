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
    <title>登录</title>
    <jsp:include page="common/head-js.jsp"/>
    <script src="static/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript">
        function login1() {
            console.log("aaaa");
            var username = $("#username").val();
            var password = $("#password").val();
            username.trim();
            password.trim();
            if(!username){
                console.log("bbb");
                $("#span1").text("用户名不能为空！");
            }else if(!password){
                console.log("ccc");
                $("#span2").text("密码不能为空！");
            }else{
                console.log("ddd");
                var data = {
                  name:username,
                  password:password
                };
                $.ajax({
                    url:"${path}/member/login",
                    type:'post',
                    data:data,
                    success:function (result) {
                        if(result.msg){
                            location="index.jsp";
                        }else{
                            $("#span").text(result.error);
                        }
                    },
                    error:function (result) {

                    }
                });

            }

        }
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
                        <h2 class="page-title text-center">登录</h2>
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
                        <div class="text-center mb-1 section-pretitle">登录</div>
                        <div class="organik-seperator mb-6 center">
                            <span class="sep-holder"><span class="sep-line"></span></span>
                            <div class="sep-icon"><i class="organik-flower"></i></div>
                            <span class="sep-holder"><span class="sep-line"></span></span>
                        </div>

                        <div>
                            <form style="width: 300px;margin: 0 auto;padding:0 auto" >
                                <span id="span"></span>
                                <input type="text" style="width: 300px;" id="username" name="username" placeholder="用户名"/><span style="color: red" id="span1"></span><br/><br/>
                                <input type="password" style="width: 300px;" id="password" name="password" placeholder="密码"/><span style="color: red" id="span2"></span><br/><br/>
                                <input type="button" onclick="login1()" style="width: 300px;" value="登录"/>
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


