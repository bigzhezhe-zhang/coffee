<%--
  Created by IntelliJ IDEA.
  User: zhe
  Date: 2020/10/5
  Time: 2:35 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- HTML5文档-->
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
    <title>添加用户</title>

    <!-- 1. 导入CSS的全局样式 -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="${pageContext.request.contextPath}/js/jquery-2.1.0.min.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <style>
        body {
            text-align:center;
            margin:o auto;
            background-image:url(/imgs/back.png);
            background-size:1400px 850px
        }
        div.container{
            margin-top:100px;
            margin-left:450px;
            width:400px;
            height:350px;
            background:rgba(255,255,255,0.4);
            border:1px soild #fff;
            border-radius:20px;
        }
    </style>
</head>
<body>
<div class="container">
    <center><h3>注册</h3></center>
    <form action="register" method="post">
        <div class="form-group">
            <label for="username">账号：</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="请输入用户名">
        </div>

        <div class="form-group">
            <label for="password">密码：</label>
            <input type="text" class="form-control" id="password" name="password" placeholder="请输入密码"/>
        </div>

        <div class="form-group">
            <label for="telephone">联系方式：</label>
            <input type="text" class="form-control" id="telephone" name="telephone" placeholder="请输入联系方式"/>
        </div>
        <div>
            <input type="hidden" name="identity" value="0">
        </div>

        <div class="form-group" style="text-align: center">
            <input class="btn btn-default btn-lg" type="submit" value="提交" />
            <input class="btn btn-default btn-lg" type="reset" value="重置" />
            <input class="btn btn-default btn-lg" type="button" value="返回" onclick="javascript:window.history.back(-1);"/>
        </div>
    </form>
</div>
</body>
</html>