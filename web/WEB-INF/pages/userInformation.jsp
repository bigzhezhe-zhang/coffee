<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020-10-09
  Time: 14:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>

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

    <script>
        function update(id) {
            var password = $("#password").val();
            var telephone = $("#telephone").val();
            location.href="/user/modify?password="+password+"&telephone="+telephone+"&id="+id;
        }
        function delete1(id) {
            location.href="/user/delete1?id="+id;
        }
    </script>
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
    <h1>用户信息维护</h1>
    <form action="${pageContext.request.contextPath}/user/userInformation" method="post">
        <input type="submit" value="刷新">
    </form>
    <table border="1" class="table table-bordered table-hover" style="margin: auto">
        <tr class="success">
            <th align="center" >ID</th>
            <th align="center" >用户名称</th>
            <th align="center" >密码</th>
            <th align="center" >联系方式</th>
            <th align="center">操作</th>
        </tr>
        <c:forEach items="${list}" var="userInformation">
            <tr>
                <td align="center">${userInformation.id}</td>
                <td align="center">${userInformation.username}</td>
                <td align="center">
                    <input name="password" id="password" value="${userInformation.password}">
                </td>
                <td align="center">
                    <input name="telephone" id="telephone" value="${userInformation.telephone}">
                </td>
                <td>
                    <a href="javascript:update(${userInformation.id})" class="btn btn btn-primary">修改</a>
                    <a href="javascript:delete1(${userInformation.id})" class="btn btn btn-primary">删除</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    ${msg}
</body>
</html>
