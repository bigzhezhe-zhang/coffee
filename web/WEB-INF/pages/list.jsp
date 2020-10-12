<%--
  Created by IntelliJ IDEA.
  User: zhe
  Date: 2020/9/30
  Time: 4:28 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Test</title>
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
<c:forEach items="${list}" var="commodity">
    ${commodity.id}${commodity.name}${commodity.number}${commodity.price}<br>
</c:forEach>
</body>
</html>
