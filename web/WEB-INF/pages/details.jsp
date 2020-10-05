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
    <style type="text/css">
        td, th {
            text-align: center;
        }
    </style>
</head>
<body>
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
                <td><img src="${pageContext.request.contextPath}/imgs/coffee.jpg" title="hahah"></td>
                <td>${coffee.price}/杯</td>
                <td><a class="btn btn-primary" href="add.html">预订</a></td>
            </tr>
        </c:forEach>

    </table>
</div>
</body>
</html>
