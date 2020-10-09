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
    <title>Title</title>
</head>
<body>
    <h1>订单信息维护</h1>
    <form action="${pageContext.request.contextPath}/order/orderInformation" method="post">
        <input type="submit" value="刷新">
    </form>
    <table>
        <tr>
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
