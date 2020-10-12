<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020-10-09
  Time: 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>订单信息维护</title>
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
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/js/change2.js" type=""text="text/javascript"></script>
    <style>
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
    <h1>订单信息维护</h1>
    <form action="${pageContext.request.contextPath}/order/orderInformation" method="post">
        <input type="submit" value="刷新">
    </form>
    <table border="1" class="table table-bordered table-hover" style="margin: auto">
        <tr class="success">
            <th align="center" >ID</th>
            <th align="center" >用户姓名</th>
            <th align="center" >nameid</th>
            <th align="center" >商品数量</th>
            <th align="center" >商品价格</th>
            <th align="center" >商品状态</th>
            <th align="center" >日期</th>
        </tr>
        <c:forEach items="${list}" var="orderInformation">
            <tr>
                <td align="center">${orderInformation.id}</td>
                <td align="center">${orderInformation.username}</td>
                <td align="center">${orderInformation.nameid}</td>
                <td align="center">${orderInformation.number}</td>
                <td align="center">${orderInformation.price}</td>
                <td align="center">
                    <select name="state">
                        <c:if test="${orderInformation.state =='预售'}">
                            <option value="${orderInformation.state}" selected>预售</option>
                        </c:if>
                        <c:if test="${orderInformation.state =='已售'}">
                            <option value="${orderInformation.state}" selected>已售</option>
                        </c:if>
                        <option value="已售">已售</option>
                    </select>
                </td>
                <td align="center">${orderInformation.date}</td>
                <td>
                    <form action="${pageContext.request.contextPath}/order/modify?state=已售&id=${orderInformation.id}" method="post">
                        <input type="submit" value="修改">
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
    ${msg}
</body>
</html>
