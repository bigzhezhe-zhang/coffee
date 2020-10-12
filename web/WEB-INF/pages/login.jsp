<%--
  Created by IntelliJ IDEA.
  User: zhe
  Date: 2020/10/5
  Time: 2:09 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>用户登录</title>

    <!-- 1. 导入CSS的全局样式 -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="${pageContext.request.contextPath}/js/jquery-2.1.0.min.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="${pageContext.request.contextPath}/css/girl.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript"  src="${pageContext.request.contextPath}/js/L2Dwidget.0.min.js"></script>
    <script type="text/javascript"  src="${pageContext.request.contextPath}/js/L2Dwidget.min.js"></script>
    <script type="text/javascript">
    </script>
        <style>
        body {
            text-align:center;
            margin: auto;
            background-image:url(/imgs/back.png);
            background-size:1400px 750px;
        }
        div.container{
            margin-top:150px;
            margin-left:400px;
            width:400px;
            height:300px;
            background:rgba(255,255,255,0.4);
            border: 1px solid #ffff;
            border-radius:20px;
        }
    </style>
</head>
<body>
<script>
    L2Dwidget.init({"display": {
            "superSample": 2,
            "width": 200,
            "height": 400,
            "position": "right",
            "hOffset": 0,
            "vOffset": 0
        }
    });
</script>
<div class="container" style="width: 400px;">

    <h3 style="text-align: center;">用户登录</h3>
    <form action="/login/login" method="post">
        <div class="form-group">
            <label for="username">用户名：</label>
            <input type="text" name="username" class="form-control" id="username" placeholder="请输入用户名"/>
        </div>

        <div class="form-group">
            <label for="password">密码：</label>
            <input type="password" name="password" class="form-control" id="password" placeholder="请输入密码"/>
        </div>

        <%--    <div class="form-inline">--%>
        <%--      <label for="vcode">验证码：</label>--%>
        <%--      <input type="text" name="verifycode" class="form-control" id="verifycode" placeholder="请输入验证码" style="width: 120px;"/>--%>
        <%--      <a href="javascript:refreshCode()"><img src="vcode" title="看不清点击刷新" id="vcode"/></a>--%>
        <%--    </div>--%>
        <hr/>
        <div class="form-group" style="text-align: center;">
            <input class="btn btn btn-primary" type="submit" value="登录">
            <a href="/login/toRegister" class="btn btn btn-primary">注册</a>
        </div>
    </form>



    <%--  <!-- 出错显示的信息框 -->--%>
    <%--  <div class="alert alert-warning alert-dismissible" role="alert">--%>
    <%--    <button type="button" class="close" data-dismiss="alert" >--%>
    <%--      <span>&times;</span></button>--%>
    <%--    <strong>登录失败!</strong>--%>
    <%--  </div>--%>
</div>

</body>
</html>