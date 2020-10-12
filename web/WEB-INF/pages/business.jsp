<%--
  Created by IntelliJ IDEA.
  User: zhezhe
  Date: 2020/10/11
  Time: 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商家页面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="${pageContext.request.contextPath}/css/girl.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript"  src="${pageContext.request.contextPath}/js/L2Dwidget.0.min.js"></script>
    <script type="text/javascript"  src="${pageContext.request.contextPath}/js/L2Dwidget.min.js"></script>
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
</body>
</html>
