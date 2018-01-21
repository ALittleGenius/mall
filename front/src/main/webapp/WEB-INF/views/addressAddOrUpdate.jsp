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
    <title>编辑收货地址</title>
    <jsp:include page="common/head-js.jsp"/>
    <script src="${path}/static/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript">
        function addAddress() {

        }
        function addressDefult(id) {

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
                        window.location = '${path}/address/getAddressAll';
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
    <%--head--%>
    <jsp:include page="common/head.jsp"/>



    <div id="main">
        <div class="section section-bg-10 pt-11 pb-17">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <h2 class="page-title text-center">编辑收货地址</h2>
                    </div>
                </div>
            </div>
        </div>


        <div class="section pt-10 pb-10">
            <div class="container">


                <div class="row">
                    <div class="col-sm-12">
                        <%--<hr class="mt-4 mb-7" />--%>
                        <div class="text-center mb-1 section-pretitle">编辑</div>
                        <div class="organik-seperator mb-6 center">
                            <span class="sep-holder"><span class="sep-line"></span></span>
                            <div class="sep-icon"><i class="organik-flower"></i></div>
                            <span class="sep-holder"><span class="sep-line"></span></span>
                        </div>

                        <div>
                            <form style="width: 300px;margin: 0 auto;padding:0 auto" action="${path}/address/addressAddOrUpdate" method="post" >
                                <input type="hidden" id="id" name="id" value="${requestScope.address.id}"/>
                                <input type="hidden" name="memberId" value="${sessionScope.member.id}">
                                <input type="text" style="width: 300px;" value="${requestScope.address.name}" id="name" name="name" placeholder="收件人"/><span style="color: red" id="span1"></span><br/><br/>
                                <input type="tel" style="width: 300px;" id="tel" value="${requestScope.address.tel}" name="tel" placeholder="手机号"/><span style="color: red" id="span2"></span><br/><br/>
                                <input type="text" style="width: 300px;" id="address" value="${requestScope.address.address}" name="address" placeholder="收货地址"/><span style="color: red" id="span2"></span><br/><br/>
                                <input type="text" style="width: 300px;" id="ZIP" value="${requestScope.address.ZIP}" name="ZIP" placeholder="邮政编码" /><br/><br/>
                                <c:if test="${requestScope.address.type == 2}">
                                    已设为默认地址<br/><br/>
                                </c:if>
                                <c:if test="${requestScope.address.type != 2}">
                                    <%--判断是添加还是修改--%>
                                    <input type="radio" onclick="addressDefult(${requestScope.address.id})" name="type" value="2"/>设为默认地址
                                    <br/><br/>
                                </c:if>
                                <c:if test="${requestScope.address != null}">
                                    <a href="#" onclick="deleteAddress(${requestScope.address.id})">删除</a>
                                </c:if>
                                <input type="submit" style="display: inline-block;float: right; width: 50px;text-align: center" value="保存"/>
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


