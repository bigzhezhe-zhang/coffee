<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020-10-08
  Time: 18:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>商品库存价格信息维护</h1>
    <form action="${pageContext.request.contextPath}/commodity/addCommodityInformation" method="post">
        <input type="submit" value="添加信息">
    </form>
    <form action="${pageContext.request.contextPath}/commodity/commodityPrice" method="post">
        <input type="submit" value="刷新">
    </form>
    <table>
        <tr>
            <th align="center" >ID</th>
            <th align="center" >商品名称</th>
            <th align="center" >商品数量</th>
            <th align="center" >商品价格</th>
        </tr>
        <c:forEach items="${list}" var="commodityPrice">
            <tr>
                <td align="center">${commodityPrice.id}</td>
                <td align="center">${commodityPrice.name}</td>
                <td align="center">${commodityPrice.number}</td>
                <td align="center">${commodityPrice.price}</td>
                <td>
                    <form action="${pageContext.request.contextPath}/commodity/modify1" method="post">
                        <input type="submit" value="修改">
                    </form>
                </td>
                <td>
                    <form action="delete.do?id=${commodityPrice.id}" method="post">
                        <input type="submit" value="删除">
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
    ${msg}
</body>
</html>
