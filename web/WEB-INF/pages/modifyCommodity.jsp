<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020-10-09
  Time: 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
</head>
<body>
    <div>
        <form action="${pageContext.request.contextPath}/commodity/modify" method="post">
            <div>
                ID：<input type="text" name = "id">
            </div>
            <div>
                商品名称：<input type="text" name = "name">
            </div>
            <div>
                商品数量：<input type="text" name = "number">
            </div>
            <div>
                商品价格：<input type="text" name = "price">
            </div>
            <input type="submit" button="提交">
        </form>
        <form action="${pageContext.request.contextPath}/commodity/return1">
            <input type="submit" value="返回商品库存价格信息管理界面">
        </form>
        ${msg}
    </div>
</body>
</html>
