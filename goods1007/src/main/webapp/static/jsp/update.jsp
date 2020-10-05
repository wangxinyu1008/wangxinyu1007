<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/9/30
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Title</title>
    <script src="/static/js/jquery-1.12.4.js"></script>
</head>
<body>
<center>
<form action="/doUpd" method="post">
<table border="1px" width="400px">
    <tr align="center"><td colspan="2"><h1>学员信息</h1></td></tr>
    <tr>
        <td width="200px">商品编号</td>
        <td><input hidden name="goodsdistrict" value="${sessionScope.goodsdistrict}"><input class="id" name="id" value="${sessionScope.id}"></td>
    </tr>
    <tr>
        <td width="200px">商品名称</td>
        <td><input class="goodname" name="goodname" value="${sessionScope.goodname}"></td>
    </tr>
    <tr>
        <td width="200px">商品价格</td>
        <td><input class="goodsprice" name="goodsprice" value="${sessionScope.goodsprice}"></td>
    </tr>
    <tr>
        <td width="200px">库存数量</td>
        <td><input class="goodscount" name="goodscount"  value="${sessionScope.goodscount}"></td>
    </tr>
    <tr>
        <td width="200px">订单状态</td>
        <td><select name="billstatus">
            <c:if test="${sessionScope.billstatus=='待处理'}">
                <option value="0">待处理</option>
                <option value="1">处理中</option>
                <option value="2">已处理</option>
            </c:if>
            <c:if test="${sessionScope.billstatus=='处理中'}">
                <option value="1">处理中</option>
                <option value="0">待处理</option>
                <option value="2">已处理</option>
            </c:if>
            <c:if test="${sessionScope.billstatus=='已处理'}">
                <option value="2">已处理</option>
                <option value="0">待处理</option>
                <option value="1">处理中</option>
            </c:if>
        </select></td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <input type="submit" value="提交">&nbsp;
           <button class="btn-fan">返回</button>
        </td>
    </tr>
</table>
</form>
</center>
</body>
</html>
