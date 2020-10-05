<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/10/6
  Time: 0:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <form action="/select" method="post">
    请选择区域：<select name="goodsdistrict">
        <option value="1">朝阳区订单</option>
        <option value="2">海淀区订单</option>
        <option value="3">丰台区订单</option>
        <option value="4">西城区订单</option>
        <option value="5">昌平区订单</option>
    </select>&nbsp;
        <input type="submit" value="查  询">
    </form>
</center>
</body>
</html>
