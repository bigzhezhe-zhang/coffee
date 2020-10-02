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
    <title>test</title>
</head>
<body>
<c:forEach items="${list}" var="commodity">
    ${commodity.id}${commodity.name}${commodity.number}${commodity.price}<br>
</c:forEach>
</body>
</html>
