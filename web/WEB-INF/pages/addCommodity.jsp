<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020-10-08
  Time: 19:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <div>
        <form action="${pageContext.request.contextPath}/commodity/addCommodity" method="post">
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
