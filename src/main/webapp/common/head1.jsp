<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2018/1/13
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${pageContext.request.contextPath}" var="path"/>
<div class="noo-spinner">
    <div class="spinner">
        <div class="cube1"></div>
        <div class="cube2"></div>
    </div>
</div>
<div id="menu-slideout" class="slideout-menu hidden-md-up">
    <div class="mobile-menu">
        <ul class="main-menu">
            <li><a href="${path}/index.jsp">主页</a></li>
                <c:forEach items="${applicationScope.category}" var="category">
                    <li><a>${category.name}</a></li>
                </c:forEach>
            <li><a href="contact-us.html">联系我们</a></li>
            <li><a href="about-us.html">关于我们</a></li>
        </ul>
    </div>
</div>
