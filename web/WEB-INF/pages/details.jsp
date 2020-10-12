<%--
  Created by IntelliJ IDEA.
  User: zhe
  Date: 2020/10/4
  Time: 6:48 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- 网页使用的语言 -->
<html lang="zh-CN">
<head>
    <!-- 指定字符集 -->
    <meta charset="UTF-8">
    <title>商品下单</title>

    <!-- 1. 导入CSS的全局样式 -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="${pageContext.request.contextPath}/js/jquery-2.1.0.min.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/change2.js" type=""text="text/javascript"></script>
    <style type="text/css">
        td, th {
            text-align: center;
        }
        #canvas{
            position:fixed;
            background:#fff;
            overflow: auto;
            z-index: -1;
        }
    </style>
    <script>
        function book(username,nameid,price) {
            if (confirm("您是否确认预订")){
                location.href="/order/book?username="+username+"&nameid="+nameid+"&price="+price;
            }
        }
    </script>
</head>
<body>
<canvas id="canvas"></canvas>
<!-- 首页导航 -->
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">欢迎${username}登录</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        设置<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="/login/toUpdate">修改联系方式</a></li>
                        <li><a href="/order/horders">查看历史订单</a></li>
                        <li><a href="">退出</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<div class="container">
    <h3 style="text-align: center">商品详情</h3>
    <table border="1" class="table table-bordered table-hover" style="margin: auto">
        <tr class="success">
            <th>名称</th>
            <th>展示</th>
            <th>价格</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${list}" var="coffee">
            <tr>
                <td>${coffee.name}</td>
                <td><img src="${pageContext.request.contextPath}/imgs/coffee.jpg" title="coffee"></td>
                <td>${coffee.price}/杯</td>
                <td><a class="btn btn-primary" href="javascript:book('${username}','${coffee.id}','${coffee.price}');">预订</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
