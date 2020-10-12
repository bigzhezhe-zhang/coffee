<%--
  Created by IntelliJ IDEA.
  User: zhe
  Date: 2020/10/6
  Time: 4:36 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!-- 网页使用的语言 -->
<html lang="zh-CN">
<head>
    <!-- 指定字符集 -->
    <meta charset="utf-8">
    <!-- 使用Edge最新的浏览器的渲染方式 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- viewport视口：网页可以根据设置的宽度自动进行适配，在浏览器的内部虚拟一个容器，容器的宽度与设备的宽度相同。
    width: 默认宽度与设备的宽度相同
    initial-scale: 初始的缩放比，为1:1 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>历史订单页面</title>

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
</head>
<body>
<canvas id="canvas"></canvas>
<div class="container">
    <h3 style="text-align: center">用户信息列表</h3>
    <table border="1" class="table table-bordered table-hover" style="margin: auto">
        <tr class="success">
            <th>名称</th>
            <th>展示</th>
            <th>数量</th>
            <th>价格</th>
            <th>时间</th>
        </tr>
        <c:forEach items="${orders}" var="ord">
            <tr>
                <td>${ord.commodity.name}</td>
                <td><img src="${pageContext.request.contextPath}/imgs/coffee.jpg" title="coffee"></td>
                <td>${ord.number}</td>
                <td>${ord.price}/杯</td>
                <td><fmt:formatDate value="${ord.date}" pattern="yyyy-MM-dd"/></td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>
