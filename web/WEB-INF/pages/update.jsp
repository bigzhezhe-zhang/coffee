<%--
  Created by IntelliJ IDEA.
  User: zhe
  Date: 2020/10/6
  Time: 9:14 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!-- 网页使用的语言 -->
<html lang="zh-CN">
<head>
    <!-- 指定字符集 -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>修改用户信息</title>

    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-2.1.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
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
<div class="container" style="width: 400px;">
    <h3 style="text-align: center;">修改信息</h3>
    <form action="/user/update" method="post">
        <div class="form-group">
            <label for="username">账号：</label>
            <input type="text" class="form-control" id="username" name="username"  readonly="readonly" value="${user.username}"/>
        </div>

        <div class="form-group">
            <label for="password">密码：</label>
            <input type="text" class="form-control" id="password"  name="password" readonly="readonly" value="${user.password}"/>
        </div>
        <div class="form-group">
            <label for="telephone">联系方式：</label>
            <input type="text" class="form-control" id="telephone" name="telephone" value="${user.telephone}" placeholder="请输入联系方式"/>
        </div>

        <div class="form-group" style="text-align: center">
            <input class="btn btn-primary" type="submit" value="提交" />
<%--            <input class="btn btn-default" type="reset" value="重置" />--%>
            <input class="btn btn-default" type="button" value="返回" onclick="javascript:window.history.back(-1);"/>
        </div>
    </form>
</div>
</body>
</html>